package myblog

import com.myblog.co.UserDetailCO

class UserProfileController {

    def myProfile() {
        println("*******************1******************")
        println("********************2*****************")
        println("*********************3****************")
        println("**********************4***************")
        println("***********************5**************")
        println("************************6*************")
        println("*************************7************")
        if (request.method == 'GET') {
            render view: "profile", model: [user: new UserDetailCO()]
        } else if (request.method == 'POST') {

        }

    }
}
