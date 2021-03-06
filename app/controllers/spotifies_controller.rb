class SpotifiesController < ApplicationController
	def index
		@update_result=[]
		Band.all.each do |item|
			update_popularity(item)
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
		
		
		unless Spotify.where('band_id= ? AND created_at >=?',id, Time.zone.now.beginning_of_day).exists?
			spoti=Spotify.create(band_id: id, popularity: spoti_popularity)
			@update_result.push("Band #{id} popularity updated successfulluy \n")
		else
			@update_result.push("The band #{id} has not been updated \n")
		end	
	end	
end

