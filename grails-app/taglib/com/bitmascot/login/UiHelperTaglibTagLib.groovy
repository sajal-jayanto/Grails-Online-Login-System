package com.bitmascot.login

class UiHelperTaglibTagLib {

    static namespace = "UIHelper"

    AuthenticationService authenticationService

    def renderErrorMessage = { attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage? g.message(code: attrs.errorMessage): g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)){
            out << "<small class='form-text text-danger''><strong>${errorMessage}</strong></small>"
        }
    }


    def memberActionMenu = { attrs, body ->

        out << g.link(class:"nav-link dropdown-toggle" , "data-toggle" :"dropdown"){authenticationService.getUserName()}
        out << '<div class="dropdown-menu dropdown-menu-right">'
        out << g.link(controller: "Dashboard", action: "change", class: "dropdown-item"){g.message(code:"Change Password")}
        out << g.link(controller: "User", action: "logout", class: "dropdown-item"){g.message(code:"Logout")}
        out << '</div>'

    }

    def leftNavigation = { attrs, body ->
        List navigations = [
        ]

        if(authenticationService.isAdmin()){
            navigations.add([controller: "Admin", action: "index", name: "User List"])
        }else{
            navigations.add([controller: "Dashboard", action: "index", name: "Profile Page"])
            navigations.add([controller: "Dashboard", action: "change", name: "Change Password"])
        }

        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }
}
