package com.myblog.service.signup

import com.myblog.co.UserDetailCO
import com.myblog.domain.Role
import com.myblog.domain.User
import com.myblog.domain.UserRole
import org.springframework.transaction.annotation.Transactional

/**
 * Created by nexthoughts on 20/8/14.
 */

@Transactional
class SignupService {


    def userSignup(UserDetailCO userDetailCO) {

        User user = new User()
        user.username = userDetailCO.username
        user.password = userDetailCO.password
        user.gender = userDetailCO.gender
        user.email = userDetailCO.email
        user.enabled = true
        Role role = Role.findByAuthority(userDetailCO.authority)
        println(role.authority)
        println(role.id)
        if (!user.save()) {
            user.errors.allErrors.each {
                println("--------it-----" + it)
            }
        }


        UserRole userRole = new UserRole()
        userRole.role = role
        userRole.user = user
        userRole.save()

    }

}
