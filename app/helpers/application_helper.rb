module ApplicationHelper
	def my_confirmation_url(token)
		"http://localhost:3000/#{token}"
	end
end
