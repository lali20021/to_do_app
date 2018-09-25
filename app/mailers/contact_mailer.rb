class ContactMailer < ActionMailer::Base
 default to: "lali20021@hotmail.com"

 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: 'to-do-app-by-Lali.com Contact Form Message')
 end
end
