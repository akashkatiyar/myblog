package com.myblog.service.blog

import com.myblog.Converter.COToDomain
import com.myblog.co.BlogCO
import com.myblog.domain.Blog
import com.myblog.domain.User
import org.springframework.transaction.annotation.Transactional

@Transactional
class BlogService {

    def createBlog(BlogCO blogCO) {

        COToDomain coToDomain = new COToDomain()
        Blog blog = coToDomain.blogCOToBlogConverter(blogCO)
        blog.save()
    }


    def updateBlog(BlogCO blogCO) {
        User user = new User()
        user.id = blogCO.userId
        Blog blog = Blog.get(blogCO.blogId)
        blog.user = user
        blog.title = blogCO.title
        blog.content = blogCO.content
        Date date = new Date()
        blog.updatedAt = date
        blog.save()
    }


}
