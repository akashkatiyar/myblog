package myblog

import com.myblog.co.UserDetailCO

class SignupController {

    def signupService


    def signup = {

        if (request.method == 'GET') {
            String view = 'signup'
            render view: view, model: [user: new UserDetailCO()]

        } else if (request.method == 'POST') {

            def userDetailCO = new UserDetailCO(params)
            if (userDetailCO.validate()) {

                signupService.userSignup(userDetailCO)


            } else {
                userDetailCO.errors.allErrors.each {
                    println("/n")
                    println(it)
                }
                String view = 'signup'
                render view: view, model: [user: userDetailCO]
            }

        }

    }

}

