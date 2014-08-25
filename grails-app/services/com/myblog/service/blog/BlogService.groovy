package com.myblog.service.blog

import com.myblog.Converter.COToDomain
import com.myblog.co.BlogCO
import com.myblog.domain.Blog
import com.myblog.domain.Comment
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

    def createComment(Blog blog, User user, String sComment) {
        Comment comment = new Comment()
        comment.user = user
        comment.blog = blog
        comment.comment = sComment
        Date date = new Date()
        comment.createdAt = date
        comment.save()

    }

    def deleteBlog(Long blogId) {
        Blog blog = Blog.get(blogId)
        List<Comment> commentList = Comment.findAllByBlog(blog)
        for (comment in commentList)
            comment.delete()
        blog.delete()
    }

}
