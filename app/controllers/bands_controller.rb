class BandsController < ApplicationController
	def index
		@user = current_user.id 
		@bands = Band.where user_id: @user

		
	end	



private
	def band_params
		params.require(:band).permit(:name, :spotifyID, :picture, :user_id)	
	end	
end
