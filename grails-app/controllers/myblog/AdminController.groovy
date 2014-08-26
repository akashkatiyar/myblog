package myblog

import com.myblog.Converter.DomainTOCO
import com.myblog.co.BlogCO
import com.myblog.co.UserDetailCO
import com.myblog.domain.Blog
import com.myblog.domain.Role
import com.myblog.domain.User
import com.myblog.domain.UserRole
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def users() {

        Role writer = Role.findByAuthority("ROLE_AUTHOR")
        Role author = Role.findByAuthority("ROLE_WRITER")
        List<UserRole> userRoleList = UserRole.findAllByRoleOrRole(writer, author)

        List<UserDetailCO> userDetailCOList = new ArrayList<UserDetailCO>()
        for (userRole in userRoleList) {
            DomainTOCO domainTOCO = new DomainTOCO()
            UserDetailCO userDetailCO = domainTOCO.UserRoleToUserDetailCOConverter(userRole)
            List<Blog> blogList = Blog.findAllByUser(userRole.user)
            userDetailCO.totalBlog = blogList.size() as Long
            userDetailCOList.add(userDetailCO)
        }
        render view: "users", model: [userDetailCOList: userDetailCOList]
    }

    def userBlog() {

        Long userId = params.id as Long
        User user = User.get(userId)
        String username = user.username
        List<Blog> userBlogList = Blog.findAllByUser(user)
        List<BlogCO> userBlogCOList = new ArrayList<BlogCO>()
        for (blog in userBlogList) {
            DomainTOCO domainTOCO = new DomainTOCO()
            BlogCO blogCO = domainTOCO.blogToBlogCOConverter(blog)
            userBlogCOList.add(blogCO)
        }
        render view: "/blog/view", model: [blogCOList: userBlogCOList, username: username]
    }
}
