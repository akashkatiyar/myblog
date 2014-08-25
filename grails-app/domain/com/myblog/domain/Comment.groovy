package com.myblog.domain

class Comment {

    User user
    Blog blog
    String comment
    Date createdAt

    static constraints = {
    }
}
