class NotificationMailer < ActionMailer::Base
  default from: "no-reply@moochsterapp.com"

  def comment_added
  	 mail(to: "jmangaly@gmail.com",
         subject: "A comment has been added to your place")
  end
end
