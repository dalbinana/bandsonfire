class BandsController < ApplicationController
	def index
		@user = current_user.id 
		@bands = Band.where user_id: @user
		@band = Band.new 
		@spotify = Spotify.new

		
	end	
	def create
		@user = current_user.id
		@band = Band.new band_params
		if @band.save

			update_popularity(@band)

	    flash[:notice] = "Entry created successfulluy"
	    redirect_to action: 'index', controller:'bands'
	  else
	    render 'index'
	  end
  end

  def update_popularity(item)
			id=item.id
			band=item.spotifyID
	  	url = 'https://api.spotify.com/v1/artists'
			conn = Faraday.new(url: url) do |faraday|
			  faraday.adapter Faraday.default_adapter
			  faraday.response :json
			end
			
			response = conn.get(band)
			spoti_popularity=response.body["popularity"]
			create_spoti(id,spoti_popularity)
	end	
	def create_spoti (id,spoti_popularity)
		spoti=Spotify.create(band_id: id, popularity: spoti_popularity)
	end

  def destroy
  	@user = current_user.id
  	@band = Band.find params[:id]
  	@band.destroy
  	@spotifies = Spotify.where band_id: @band.id
  	if @band.destroy
  		@spotifies.each do |item|
  			item.destroy
  		end	
      flash[:alarm] = "Arrrrggg deleted"
    end  
    redirect_to user_bands_path   
  end	



private
	def band_params
		params.require(:band).permit(:name, :spotifyID, :picture, :user_id)	
	end	
end
