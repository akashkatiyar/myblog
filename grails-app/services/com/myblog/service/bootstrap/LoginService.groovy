package com.myblog.service.bootstrap

import com.myblog.domain.Role
import com.myblog.domain.User
import com.myblog.domain.UserRole
import org.springframework.transaction.annotation.Transactional

/**
 * Created by nexthoughts on 13/8/14.
 */
@Transactional
class LoginService {

    void createBootStrapData() {
        createRoles()
        createAdmin()
        createWriter()
    }


    void createRoles() {
        if (!Role.count()) {
            Role adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
            Role writerRole = new Role(authority: 'ROLE_WRITER').save(flush: true)
            Role authorRole = new Role(authority: 'ROLE_AUTHOR').save(flush: true)
        }
    }

    void createAdmin() {
        if (!User.count()) {
            Role role = Role.findByAuthority('ROLE_ADMIN ')
            User admin1 = new User(username: 'admin1@email.com', enabled: true, password: '1234')
            if (admin1.validate() && !admin1.hasErrors()) {
                admin1.save(flush: true, failOnError: true)
                UserRole.create(admin1, role, true)
            }

            User admin2 = new User(username: 'admin2@email.com', enabled: true, password: '1234')
            if (admin2.validate() && !admin2.hasErrors()) {
                admin2.save(flush: true, failOnError: true)
                UserRole.create(admin2, role, true)
            }
        }

    }

    void createWriter() {
        Role role = Role.findByAuthority('ROLE_WRITER')
        if (!User.findByUsername('user1@email.com')) {
            User user1 = new User(username: 'user1@email.com', firstName: 'user1', enabled: true, password: '1234')
            if (user1.validate() && !user1.hasErrors()) {
                user1.save(flush: true, failOnError: true)
                UserRole.create(user1, role, true)
            }
        }

        if (!User.findByUsername('user2@email.com')) {
            User user2 = new User(username: 'user2@email.com', firstName: 'user2', enabled: true, password: '1234')
            if (user2.validate() && !user2.hasErrors()) {
                user2.save(flush: true, failOnError: true)
                UserRole.create(user2, role, true)
            }
        }
    }
}
