<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'favicon.ico')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'favicon.ico')}">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'navbar-fixed-top.css')}" type="text/css">

    %{--
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    --}%

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><img
        src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>--}%
<g:layoutBody/>
<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner"
     style="display:none;">%{--<g:message code="spinner.alt" default="Loading&hellip;"/>--}%</div>


<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Blog</a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><g:link uri="/">Home</g:link></li>
                <sec:ifAnyGranted roles="ROLE_WRITER">
                    <li><g:link controller="blog" action="createBlog">Create New Blog</g:link></li>
                    <li><g:link controller="blog" action="myBlog">My Blog</g:link></li>
                    <li><a href="#contact">My Profile</a></li>
                </sec:ifAnyGranted>
            %{-- <li class="dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                 <ul class="dropdown-menu" role="menu">
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Another action</a></li>
                     <li><a href="#">Something else here</a></li>
                     <li class="divider"></li>
                     <li class="dropdown-header">Nav header</li>
                     <li><a href="#">Separated link</a></li>
                     <li><a href="#">One more separated link</a></li>
                 </ul>
             </li>--}%
            </ul>

            <sec:ifLoggedIn>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><sec:loggedInUserInfo field="username"/></a></li>
                    <li><g:link controller="logout">Logout</g:link></li>
                </ul>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <ul class="nav navbar-nav navbar-right">
                    <li><g:link controller="login" action="index">Login</g:link></li>
                    <li><g:link controller="signup" action="signup">Sign Up</g:link></li>

                </ul>
            </sec:ifNotLoggedIn>
        </div><!--/.nav-collapse -->

    %{--<!-- Button trigger modal -->
        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
            Launch demo modal
        </button>

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>--}%

    </div>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <g:javascript src="dropdown.js"/>
    <g:javascript src="modal.js"/>
    <g:javascript library="application"/>
    <g:javascript src="bootstrap.js"/>



    <r:layoutResources/>
</body>

</html>
