<head>
    <meta name='layout' content='main'/>
    <title>My Blog</title>
</head>

<body>
<div class="container">
    <div class="page-header"><h1>My Blog</h1></div>


    <div class="jumbotron">
        <div class="row">
            <div class="col-lg-6">
                <h1>${blogCO.title}</h1>

                <p>${blogCO.content}</p>

                <p>Created By: ${blogCO.username}</p>
                <small>
                    <g:formatDate date="${blogCO.createdAt}" type="datetime" style="MEDIUM"/>
                </small>

            </div>


            %{--<p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>--}%
        </div>
    </div>

    <g:form action="comment" method='POST' class="form-horizontal" role="form">

        <div class="form-group">

            <label for="comment" class="col-sm-2 control-label">Comment</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" name='comment' required autofocus id="comment"
                       placeholder="Comment">
            </div>

            <div class="error" id="commentError" hidden="hidden">
                <p class="text-danger"></p>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" id="submit" class="btn btn-default" value="Comment"/>
            </div>
        </div>
    </g:form>

</div>
</body>
