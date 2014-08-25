package myblog

import com.myblog.co.UserDetailCO
import com.myblog.domain.User

class UserProfileController {

    def springSecurityService

    def myProfile() {

        User user = springSecurityService.getCurrentUser()
        if (request.method == 'GET') {

            render view: "profile", model: [user: new UserDetailCO()]
        } else if (request.method == 'POST') {

        }

    }
}
