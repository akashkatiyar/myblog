<%--
  Created by IntelliJ IDEA.
  User: nexthoughts
  Date: 21/8/14
  Time: 5:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title>My Blog</title>
</head>

<body>
<div class="container">

    <g:if test="${params.controller == "admin"}">
        <div class="page-header"><h1>User: ${username}</h1></div>
    </g:if>
    <g:else>
        <div class="page-header"><h1>My Blog</h1></div>
    </g:else>
    <g:if test="${blogCOList != null}">
        <g:each in="${blogCOList}" var="blog">

            <div class="jumbotron">
                <div class="row">
                    <div class="col-lg-6">
                        <g:link controller="blog" action="blogDetail"
                                id="${blog.blogId}"><h1>${blog.title}</h1></g:link>

                        <p>${blog.content}</p>

                        <p>Created By: ${blog.username}</p>

                        <small><g:formatDate date="${blog.createdAt}" type="datetime" style="MEDIUM"/></small>
                    </div>

                    <div class="col-lg-6 col-md-offset-11">

                        <g:link controller="blog" action="editBlog" id="${blog.blogId}">Edit</g:link>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <g:link controller="blog" action="deleteBlog" id="${blog.blogId}">Delete</g:link>
                    </div>
                    %{--<p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>--}%
                </div>
            </div>

        </g:each>
    </g:if>
    <g:else>
        <div class='alert alert-danger'>"No Blog For this User"</div>
    </g:else>
</div>
%{--<ul class="pagination">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>

<ul class="pager">
    <li><a href="#">Previous</a></li>
    <li><a href="#">Next</a></li>
</ul>
<g:paginate total="2"></g:paginate>--}%
</body>
</html>