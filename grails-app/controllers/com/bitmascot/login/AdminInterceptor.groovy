package com.bitmascot.login


class AdminInterceptor {

    AuthenticationService authenticationService

    AdminInterceptor(){

    }

    boolean before() {

        if(authenticationService.isAdmin()){
            return true
        } else{
            redirect(controller: "Dashboard", action: "index")
            return false
        }
    }

}
