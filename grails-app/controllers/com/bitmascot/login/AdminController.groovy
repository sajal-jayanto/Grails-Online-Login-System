package com.bitmascot.login


class AdminController {

    UserService userService

    def index() {
        def res = userService.list(params)
        [userList: res.list, total:res.count]
    }
}
