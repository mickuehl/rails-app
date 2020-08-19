class LandingController < ApplicationController
	def index
		if account_signed_in?
			redirect_to "/dashboard"
		end
	end
end
