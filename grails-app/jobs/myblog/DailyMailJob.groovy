package myblog



class DailyMailJob {

    def sendMailService
    static triggers = {
        simple name: 'mySimpleTrigger', startDelay: 600, repeatInterval: 10000000000
        //cron name: 'Send Daily Mails', cronExpression: ''
    }

    def execute() {
        try{
        sendMailService.sendDailyMail()
        }catch (Exception e){
            println(e.printStackTrace())
        }
    }
}
