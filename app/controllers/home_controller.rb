class HomeController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
  	@userId=current_user.id
  	@bands = Band.where user_id: @userId
  	@bands_to_show=[]
  	@bands.each do |item|
  		last_record= Spotify.where(band_id: item.id).last
  		popularity=last_record.popularity
  		band_hash={name: item.name, picture: item.picture, popularity: popularity, spotifyID: item.spotifyID }
  		@bands_to_show << band_hash 	
  	end	
  	@bands_to_show=@bands_to_show.sort_by { |hsh| hsh[:popularity]}.reverse


    

    
  	
  	
  end

end