package com.myblog.domain

class User {

    transient springSecurityService

    String username
    String password
    String email
    String gender
    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    Role role


    static transients = ['conPassword']

    static hasMany = [blog: Blog]

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }
}
