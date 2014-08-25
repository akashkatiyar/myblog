<%--
  Created by IntelliJ IDEA.
  User: nexthoughts
  Date: 25/8/14
  Time: 11:44 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>My Profile</title>
</head>

<div class="container">
    <div class="page-header"><h1>My Profile</h1></div>

    <g:form action="myProfile" method='POST' class="form-horizontal" role="form">

      <div class="form-group">
            <label for="password" class="col-sm-2 control-label">Password</label>

            <div class="col-sm-5">
                <input type="password" class="form-control" required name='password' id='password'
                       placeholder="Password">
            </div>


            <div class="error" id="passwordError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>

        <div class="form-group">
            <label for="confirmPassword" class="col-sm-2 control-label">Confirm Password</label>

            <div class="col-sm-5">
                <input type="password" class="form-control" required name='conPassword' id='confirmPassword'
                       placeholder="Confirm Password">
            </div>


            <div class="error" id="confirmPasswordError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>

        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>

            <div class="col-sm-5">
                <input type="email" class="form-control" required name='email' id='email'
                       placeholder="Email">
            </div>


            <div class="error" id="emailError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>

        <div class="form-group">

            <label for="male" class="col-sm-2 control-label">Gender</label>

            <div class="col-sm-1 control-label">
                <div class="radio">
                    <lable for="Male">
                        <input type="radio" name='gender' id='Male' value="male"/> Male
                    </lable>
                </div>
            </div>

            <div class="col-sm-1 control-label">
                <div class="radio">
                    <label for="Female">
                        <input type="radio" name="gender" id="Female" value="female"/> Female
                    </label>
                </div>
            </div>


            <div class="error" id="genderError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" id="submit" class="btn btn-default" value="Update"/>
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
<g:javascript src="validation/signupValidation.js"/>
<body>

</body>
</html>