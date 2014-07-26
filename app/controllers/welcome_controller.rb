class WelcomeController < ApplicationController
	def index
		redirect_to notes_path
	end
end
