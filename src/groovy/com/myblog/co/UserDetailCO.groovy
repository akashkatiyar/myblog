package com.myblog.co

import org.codehaus.groovy.grails.validation.Validateable

@Validateable
class UserDetailCO {

    Long userId
    String username
    String password
    String conPassword
    String email
    boolean enabled
    String authority
    String gender

    static constraints = {
        username blank: false, unique: true, nullable: false
        password blank: false, validator: { val, obj ->
            if (obj.conPassword != (val))
                return "userDetailCo.password.validator.error"
        }
        email blank: false, nullable: false, email: true
        gender blank: false, nullable: false
        authority blank: false, nullable: false, validator: { val, obj ->
            if (obj.authority == "-1")
                return "userDetailCo.authority.validator.error"

        }
    }

    UserDetailCO() {

    }

    UserDetailCO(Map params) {
        this.userId = params.userId
        this.username = params.username
        this.password = params.password
        this.conPassword = params.conPassword
        this.email = params.email
        this.gender = params.gender
        this.authority = params.authority

    }

}
