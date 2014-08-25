class BootStrap {

    def loginService
    def init = { servletContext ->
        loginService.createBootStrapData()
    }
    def destroy = {
    }
}
