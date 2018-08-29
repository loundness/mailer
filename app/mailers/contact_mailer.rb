class ContactMailer < ApplicationMailer

	def contact

		mail(to:'ludo.vic@me.com', subject: 'test mail')

	end	


end
