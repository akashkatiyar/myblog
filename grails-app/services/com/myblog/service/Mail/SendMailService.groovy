package com.myblog.service.Mail

class SendMailService {

    def mailService

    def sendDailyMail() {

        mailService.sendMail {
            to "akashkatiyar.it@gmail.com"
            from "akashkattu021193@gmail.com"
            subject "Hi"
            body 'I am Feeling Lucky'
        }
    }
}
