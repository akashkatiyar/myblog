package com.myblog.domain
/**
 * Created by nexthoughts on 20/8/14.
 */
class Blog {

    String title
    String content
    User user
    Date createdAt
    Date updatedAt
    Long views

    static fetchMode = [user:'eager']


}
