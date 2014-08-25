package myblog

import com.myblog.co.UserDetailCO

class UserProfileController {

    def myProfile() {
        
        if (request.method == 'GET') {
            render view: "profile", model: [user: new UserDetailCO()]
        } else if (request.method == 'POST') {

        }

    }
}
