package com.bitmascot.login

class UserController {

    UserService userService
    AuthenticationService authenticationService

    def login() {
        if (authenticationService.isAuthenticated()) {
            redirect(controller: "Dashboard", action: "index")
        }
    }

    def doLogin() {
        if (authenticationService.doLogin(params.email, params.password)) {

            def res = authenticationService.getUser()
            if(res.memberType == GlobalConfig.USER_TYPE.ADMINISTRATOR){
                flash.message = AppUtil.infoMessage(g.message(message: "Login Successfully"))
                redirect(controller: "Admin", action: "index")
            }else{
                flash.message = AppUtil.infoMessage(g.message(message: "Login Successfully"))
                redirect(controller: "Dashboard", action: "index")
            }
        } else {
            flash.message = AppUtil.infoMessage(g.message(message: "Wrong User Name or Password") , false)
            redirect(controller: "User", action: "login")
        }
    }



    def logout() {
        session.invalidate()
        flash.message = AppUtil.infoMessage(g.message(message: "Logout"))
        redirect(controller: "User", action: "login")
    }

    def create(){
        [user : flash.redirectParams]
    }

    def save(){

        def res = userService.save(params)
        if(res.isSuccess) {
            flash.message = AppUtil.infoMessage(g.message(message: "Successfully Registered"))
            redirect(controller: "User", action: "login")
        }else{
            flash.redirectParams = res.model
            flash.message = AppUtil.infoMessage(g.message(message: "Cannot Register") , false)
            redirect(controller: "User", action: "create")
        }
    }


}
