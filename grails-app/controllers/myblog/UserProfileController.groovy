package myblog

import com.myblog.co.UserDetailCO
import com.sun.jndi.url.iiopname.iiopnameURLContextFactory

class UserProfileController {

    def myProfile() {

        if(request.method=='GET'){
            render view:"profile", model: [user:new UserDetailCO()]
        }
        else if(request.method=='POST'){

        }

    }
}
