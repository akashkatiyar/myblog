package com.myblog.Converter

import com.myblog.co.BlogCO
import com.myblog.domain.Blog
import com.myblog.domain.User

/**
 * Created by nexthoughts on 21/8/14.
 */
class COToDomain {

    public Blog blogCOToBlogConverter(BlogCO blogCO) {
        User user = new User()
        user.id = blogCO.userId
        Blog blog = new Blog()
        blog.user = user
        blog.title = blogCO.title
        blog.content = blogCO.content
        blog.views = 0l
        Date date = new Date()
        blog.createdAt = date
        blog.updatedAt=date
        return blog
    }

}
