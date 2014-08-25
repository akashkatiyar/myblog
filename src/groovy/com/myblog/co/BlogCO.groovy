package com.myblog.co

import org.codehaus.groovy.grails.validation.Validateable

import java.sql.Timestamp

/**
 * Created by nexthoughts on 21/8/14.
 */
@Validateable
class BlogCO {
    Long blogId
    String title
    String content
    Long userId
    Long views
    Date createdAt
    Date updatedAt
    String username
    String comment

    static constraints = {
        title blank: false, nullable: false, unique: true
        content nullable: false, blank: false
        userId nullable: false, blank: false

    }

    BlogCO() {

    }

    BlogCO(Map params) {
        this.blogId=params.blogId as Long
        this.title = params.title
        this.content = params.content
        this.userId = params.userId as Long
        this.username=params.username
        this.views=params.views as Long
        this.createdAt = params.createdAt
        this.updatedAt = params.updatedAt
        this.comment=params.comment
    }

}
