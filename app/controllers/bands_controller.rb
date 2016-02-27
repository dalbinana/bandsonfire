class BandsController < ApplicationController
	def index
		@user = current_user.id 
		@bands = Band.where user_id: @user
		@band = Band.new 

		
	end	
	def create
		@user = current_user.id
		@band = Band.new band_params
	if @band.save
      flash[:notice] = "Entry created successfulluy"
      redirect_to action: 'index', controller:'bands'
    else
      render 'index'
     end
    end	


	




private
	def band_params
		params.require(:band).permit(:name, :spotifyID, :picture, :user_id)	
	end	
end
