<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Sign Up</title>
</head>

<body>
%{--<g:if test='${flash.message}'>
    <div class='login_message'>${flash.message}</div>
</g:if>--}%


<div class="container">
    <div class="page-header"><h1>Sign Up</h1></div>

    <form action="signup" method='POST' id='loginForm' class="form-horizontal" role="form">

        <div class="form-group">

            <label for="username" class="col-sm-2 control-label">User Role</label>

            <div class="col-sm-5">
                <select class="form-control" name="authority">
                    <option value="-1">Select Role</option>
                    <option value="ROLE_WRITER">Writer</option>
                    <option value="ROLE_AUTHOR">Author</option>
                </select>
            </div>


            <div class="error" id="roleError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>


        <div class="form-group">

            <label for="username" class="col-sm-2 control-label">User Name</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" name='username' required autofocus id="username"
                       placeholder="Username">
            </div>

            <div class="error" id="usernameError" hidden="hidden">
                <p class="text-danger"></p>
            </div>

        </div>


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
                <input type="submit" id="submit" class="btn btn-default" value="Sign Up"/>
            </div>
        </div>
    </form>
</div>
<script type='text/javascript'>
    <!--
    (function () {
        document.forms['form-horizontal'].elements['username'].focus();
    })();
    // -->
</script>
<g:javascript src="validation/signupValidation.js"/>
</body>
</html>