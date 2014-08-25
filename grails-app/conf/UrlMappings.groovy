class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "login", action: "home")
        "500"(view: '/error')
        "/signup"(controller: "signup", action: "signup")
        "/createblog"(controller: "blog", action: "createBlog")
        "/myblog"(controller: "blog", action: "myBlog")
        "/editblog"(controller: "blog", action: "editBlog")
    }
}
