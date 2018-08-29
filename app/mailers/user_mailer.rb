class UserMailer < ApplicationMailer
 # méthode pour envoyer un mail
   def welcome_email()
   	# pour customiser ses entêtes
   	headers['X-MJ-CustomID'] = 'custom value'
    headers['X-MJ-EventPayload'] = 'custom payload'

    mail(from: "me@mailjet.com", to: "you@mailjet.com",
          subject: "This is a nice welcome email")
   end

   def delivery
   	UserMailer.welcome_email.deliver_now!
   end

end

# pour indiquer à Mail de transformer une pièce jointe en pièce jointe, 
# on appelle tout simplement inline sur la méthode des pièces jointes dans votre Mailer

# def welcome
#   attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
# end