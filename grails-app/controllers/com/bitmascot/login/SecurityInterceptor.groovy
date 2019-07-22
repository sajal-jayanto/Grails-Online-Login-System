package com.bitmascot.login


class SecurityInterceptor {

    AuthenticationService authenticationService

    SecurityInterceptor(){
        matchAll().excludes(controller : "user")
    }

    boolean before() {
        if (!authenticationService.isAuthenticated()) {
            redirect(controller : "user", action: "login")
            return false
        }
        return true
    }

}
