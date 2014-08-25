package myblog

import com.myblog.Converter.DomainTOCO
import com.myblog.co.UserDetailCO
import com.myblog.domain.User
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def users() {

        List<User> userList = User.findAllByRoleOrRole("ROLE_AUTHOR", "ROLE_WRITER")
        for (user in userList) {
            DomainTOCO domainTOCO = new DomainTOCO()
            UserDetailCO userDetailCO = domainTOCO.UserToUserDetailCOConverter(user)
        }


    }
}
