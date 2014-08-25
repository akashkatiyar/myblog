package com.myblog.Converter

import com.myblog.co.BlogCO
import com.myblog.domain.Blog
import com.myblog.domain.User

/**
 * Created by nexthoughts on 21/8/14.
 */
class DomainTOCO {

    public BlogCO blogToBlogCOConverter(Blog blog) {

        BlogCO blogCO = new BlogCO()
        blogCO.blogId=blog.id
        blogCO.userId = blog.user.id
        blogCO.username=blog.user.username
        blogCO.title = blog.title
        blogCO.content = blog.content
        blogCO.views = blog.views
        blogCO.createdAt = blog.createdAt
        blogCO.updatedAt=blog.updatedAt
        return blogCO
        /*blogCO.updatedAt=blog*/

    }
}
