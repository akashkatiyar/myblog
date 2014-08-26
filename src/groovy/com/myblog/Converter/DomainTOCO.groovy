package com.myblog.Converter

import com.myblog.co.BlogCO
import com.myblog.co.UserDetailCO
import com.myblog.domain.Blog
import com.myblog.domain.User
import com.myblog.domain.UserRole

/**
 * Created by nexthoughts on 21/8/14.
 */
class DomainTOCO {

    public BlogCO blogToBlogCOConverter(Blog blog) {

        BlogCO blogCO = new BlogCO()
        blogCO.blogId = blog.id
        blogCO.userId = blog.user.id
        blogCO.username = blog.user.username
        blogCO.title = blog.title
        blogCO.content = blog.content
        blogCO.views = blog.views
        blogCO.createdAt = blog.createdAt
        blogCO.updatedAt = blog.updatedAt
        return blogCO
        /*blogCO.updatedAt=blog*/

    }

    public UserDetailCO UserToUserDetailCOConverter(User user) {

        UserDetailCO userDetailCO = new UserDetailCO()
        userDetailCO.username = user.username
        userDetailCO.authority = user.role.authority
        userDetailCO.email = user.email
        userDetailCO.gender = user.gender
        userDetailCO.userId = user.id
        userDetailCO.enabled = user.enabled
        return userDetailCO

    }

    public UserDetailCO UserRoleToUserDetailCOConverter(UserRole userRole) {

        UserDetailCO userDetailCO = new UserDetailCO()
        userDetailCO.username = userRole.user.username
        userDetailCO.authority = userRole.role.authority
        userDetailCO.email = userRole.user.email
        userDetailCO.gender = userRole.user.gender
        userDetailCO.userId = userRole.user.id
        userDetailCO.enabled = userRole.user.enabled
        return userDetailCO

    }
}
