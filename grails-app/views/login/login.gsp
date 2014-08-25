<html>
<head>
    <meta name='layout' content='main'/>
    <title>Login</title>

</head>

<body>
%{--<div id='domain'>
    <div class='col-md-2 col-md-offset-5'>

        <div class='modal-header'>Login Here</div>

        <g:if test='${flash.message}'>
            <div class='login_message'>${flash.message}</div>
        </g:if>

        <form action='${postUrl}' method='POST' id='loginForm' class='domain' autocomplete='off'>

            <h3><label for='username'>User Name:</label></h3>

            <input type="text" class="form-control" placeholder="Email" required autofocus name='j_username' id='username'>
            <input type="password" class="form-control" placeholder="Password" required  name='j_password' id='password'>





            <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                   <g:if test='${hasCookie}'>checked='checked'</g:if>/>
            <label for='remember_me'>Remember Me</label>

            <input type='submit' id="submit" class="btn btn-primary" value='Login'/>

        </form>
    </div>
</div>--}%




<div class="container">
    <div class="page-header"><h1>Log In</h1></div>

    <g:if test='${flash.message}'>
        <div class='alert alert-danger'>${flash.message}</div>
    </g:if>

    <form action="${postUrl}" method='POST' id='loginForm' autocomplete='off' class="form-horizontal" role="form">
        <div class="form-group">

            <label for="username" class="col-sm-2 control-label">UserName</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" name='j_username' required autofocus id="username"
                       placeholder="Username">
            </div>

        </div>

        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">Password</label>

            <div class="col-sm-5">
                <input type="password" class="form-control" required name='j_password' id='password'
                       placeholder="Password">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" class='chk' name='${rememberMeParameter}' id='remember_me'
                               <g:if test='${hasCookie}'>checked='checked'</g:if>/> Remember me
                    </label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" id="submit" class="btn btn-default" value="Log in"/>
            </div>
        </div>
    </form>
</div>


<script type='text/javascript'>
    <!--
    (function () {
        document.forms['form-horizontal'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
