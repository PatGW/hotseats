class NotificationsMailer < ActionMailer::Base

  default :from => "mailer@hotseats.co"
  default :to => "patrick@resonatebusiness.com"

  def new_message(message)
    @message = message
    mail(:subject => "[HotSeats Contact Form] #{message.subject}")
  end

end