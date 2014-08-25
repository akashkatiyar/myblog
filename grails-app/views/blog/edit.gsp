<%--
  Created by IntelliJ IDEA.
  User: nexthoughts
  Date: 21/8/14
  Time: 1:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title>Update Blog</title>
</head>

<body>
<div class="container">
    <div class="page-header"><h1>Update Blog</h1></div>

    <g:form action="editBlog" method='POST' class="form-horizontal" role="form">

        <div class="form-group">

            <label for="title" class="col-sm-2 control-label">Title</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" name='title' value="${blogCO.title}" required autofocus
                       id="title"
                       placeholder="Title">
            </div>

            <div class="error" id="titleError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>


        <div class="form-group">
            <label for="content" class="col-sm-2 control-label">Content</label>

            <div class="col-sm-5">
                <textarea class="form-control" required name='content' id='content'
                          placeholder="Content" rows="10">${blogCO.content}</textarea>
            </div>


            <div class="error" id="passwordError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>

        <g:hiddenField name="userId" value="${blogCO.userId}"/>
        <g:hiddenField name="blogId" value="${blogCO.blogId}"/>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" id="submit" class="btn btn-default" value="Update Blog"/>
            </div>
        </div>
    </g:form>
</div>
<script type='text/javascript'>
    <!--
    (function () {
        document.forms['form-horizontal'].elements['username'].focus();
    })();
    // -->
</script>
</body>
</html>