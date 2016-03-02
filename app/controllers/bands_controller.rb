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
  def destroy
  	@user = current_user.id
  	@band = Band.find params[:id]
  	@band.destroy
  	if @band.destroy
      flash[:alarm] = "Arrrrggg deleted"
    end  
    redirect_to user_bands_path   
  end	


  



	




private
	def band_params
		params.require(:band).permit(:name, :spotifyID, :picture, :user_id)	
	end	
end
