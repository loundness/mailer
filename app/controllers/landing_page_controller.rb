class LandingPageController<ApplicationController
	def index

	end

	def home
		ContactMailer.contact(Post.first).deliver_now
	end	
end	
