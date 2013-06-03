class NotificationsMailer < ActionMailer::Base

  default :from => "testingtest@example.com"
  default :to => "ben.cole@ymail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[HotSeats Contact Form] #{message.subject}")
  end

end