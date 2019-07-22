package com.bitmascot.login


class AppInitializationService {

    static initialize() {
        initMember()
    }

    private static initMember() {
        if (User.count() == 0) {
            User user = new User()
            user.firstName = "System"
            user.lastName = "Administrator"
            user.email = "admin@localhost.com"
            user.address = "Bitmascot"
            user.phone = "123456789"
            user.password = "admin"
            user.birthDate = new Date(2019 , 7,20)
            user.memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            if(user.validate()){
                user.save(flash: true)
            }
        }
    }
}
