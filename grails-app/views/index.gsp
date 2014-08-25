<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title>My Blog</title>
</head>

<body>
<div class="container">
    <div class="page-header"><h1>My Blog</h1></div>

    <g:each in="${blogCOList}" var="blog">

        <div class="jumbotron">
            <div class="row">
                <div class="col-lg-6">
                    <h2>${blog.username}</h2>
                    <h1>${blog.title}</h1>

                    <p>${blog.content}</p>
                    <small><g:formatDate date="${blog.createdAt}" type="datetime" style="MEDIUM"/></small>
                </div>

                %{--<p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>--}%
            </div>
        </div>

    </g:each>
</div>