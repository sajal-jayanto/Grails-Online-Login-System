package com.bitmascot.login

class User {

    Integer id
    String firstName
    String lastName
    String email
    String password
    String address
    String phone
    Date birthDate
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER

    Date dateCreated
    Date lastUpdated


    static constraints = {

        email(email: true, nullable: false, unique: true, blank: false)
        firstName(blank: false)
        lastName(blank: false)
        address(blank: false)
        password(blank: false , size: 5..50)
        phone(matches: "[0-9]+" , blank: false)
        birthDate(blalk : false)
    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
       // this.password = this.password.encodeAsMD5()
    }


}
