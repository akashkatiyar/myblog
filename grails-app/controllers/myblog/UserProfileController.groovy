package myblog

import com.myblog.co.UserDetailCO

class UserProfileController {

    def myProfile() {
        println("*************************************")
        println("*************************************")
        println("*************************************")
        println("*************************************")
        println("*************************************")
        println("*************************************")
        println("*************************************")
        if (request.method == 'GET') {
            render view: "profile", model: [user: new UserDetailCO()]
        } else if (request.method == 'POST') {

        }

    }
}
