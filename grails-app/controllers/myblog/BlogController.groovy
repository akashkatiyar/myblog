package myblog

import com.myblog.Converter.DomainTOCO
import com.myblog.co.BlogCO
import com.myblog.domain.Blog
import com.myblog.domain.User
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_WRITER'])
class BlogController {

    def blogService
    def springSecurityService

    def createBlog = {

        if (request.method == 'GET') {

            render view: "/blog/create", model: [blog: new BlogCO()]

        } else if (request.method == 'POST') {


            User user = springSecurityService.getCurrentUser()
            def blogCO = new BlogCO(params)
            blogCO.userId = user.id
            if (blogCO.validate()) {
                blogService.createBlog(blogCO)
            } else {
                blogCO.errors.allErrors.each {

                    println(it)
                }
            }
            redirect action: "myBlog"

        }
    }

    def blog = {

        if (request.method == 'GET') {
            render view: "create", model: [blog: new BlogCO()]

        } else if (request.method == 'POST') {

            User user = springSecurityService.getCurrentUser()
            def blogCO = new BlogCO(params)
            blogCO.userId = user.id
            blogService.createBlog(blogCO)

        }
    }

    def blogDetail = {

        if (request.method == 'GET') {

            Blog blog = Blog.get(params.id)
            DomainTOCO domainTOCO = new DomainTOCO()
            BlogCO blogCO = domainTOCO.blogToBlogCOConverter(blog)
            render view: "/blog/viewDetail", model: [blogCO: blogCO]

        }
    }


    def myBlog = {

        User user = springSecurityService.getCurrentUser()
        List<Blog> blogList = Blog.findAllByUser(user, [sort: "createdAt", order: "desc"])
        List<BlogCO> blogCOList = new ArrayList<BlogCO>()
        for (blog in blogList) {

            DomainTOCO domainTOCO = new DomainTOCO()
            BlogCO blogCO = domainTOCO.blogToBlogCOConverter(blog)
            blogCOList.add(blogCO)
        }

        render view: "/blog/view", model: [blogCOList: blogCOList]


    }

    def editBlog = {

        def id = params.id

        if (request.method == 'GET') {
            Blog blog = Blog.get(id)
            DomainTOCO domainTOCO = new DomainTOCO()
            BlogCO blogCO = domainTOCO.blogToBlogCOConverter(blog)
            render view: "/blog/edit", model: [blogCO: blogCO]

        } else if (request.method == 'POST') {

            BlogCO blogCO = new BlogCO(params)
            if (blogCO.validate()) {
                blogService.updateBlog(blogCO)
            } else {
                blogCO.errors.allErrors.each {

                    println(it)
                }
            }
            redirect action: "myBlog"

        }
    }

    def comment = {

        if (request.method == 'POST') {

            BlogCO blogCO = new BlogCO(params)
            if (blogCO.validate()) {
                blogService.updateBlog(blogCO)
            } else {
                blogCO.errors.allErrors.each {

                    println(it)
                }
            }
            redirect action: "blogDetail", params: params

        }
    }

    def deleteBlog = {


    }

}

