<%--
  Created by IntelliJ IDEA.
  User: nexthoughts
  Date: 26/8/14
  Time: 12:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title>My Blog</title>
</head>

<body>
<div class="container">
    <div class="page-header"><h1>Users</h1></div>


    <table class="table">

        <th>User Name</th>
        <th>Email Id</th>
        <th>User Role</th>
        <th>Gender</th>
        <th>Total Blog</th>
        <th>Enable/Disable</th>
        <g:each in="${userDetailCOList}" var="user">
            <tr>
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>${user.authority}</td>
                <td>${user.gender}</td>
                <td><g:link controller="admin" action="userBlog" id="${user.userId}">${user.totalBlog}</g:link></td>
                <td><g:if test="${user.enabled == true}">
                    <button class="btn btn-success" value="Enable" >Enable</button>
                </g:if>
                    <g:else>
                        <button class="btn btn-danger" value="Disabled">Disabled</button>
                    </g:else>
                </td>
            </tr>
        </g:each>
    </table>

</div>

</body>
</html>