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
  

  

  @data = ['Created_at']
  @bands.each do |item|
    @data<<item.name 
  end 

  array_of_dates_all=Spotify.pluck(:created_at).sort
  array_of_dates=[]
  array_of_dates_all.each do |item|
    array_of_dates<<item.strftime("%d-%m")
  end  
 
  array_of_dates.uniq!

  array_of_dates.each do |item|
    @data<<[item]
  end
  
  fail  

  # array_of_dates.each_with_index{|date,i|
  #   @bands.each do |item|
  #   @data<<item.name
  #   end 
  # }

  

  Primera data: Spotify.all.minimum(:created_at).strftime("%d-%m")

  @data=[
          ['created_at', 'band1', 'band2'],
          ['2004',  1000,      400],
          ['2005',  1170,      460],
          ['2006',  660,       1120],
          ['2007',  1030,      540]
        ];

    

    
  	
  	
  end

end