class SpotifiesController < ApplicationController
	def index
		@update_result=[]
		Band.all.each do |item|
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
		
	end	

	def create_spoti (id,spoti_popularity)
		spoti=Spotify.create(band_id: id, popularity: spoti_popularity)
		spoti.save

		if spoti.save
      @update_result.push("#{id} Popularity updated successfulluy \n")
    else
    	@update_result.push("#{id} FAIL \n")
    end
    
	end	
end

# 5D5oIuHtOHSaU5alV1HNXF
