(function () {
	var Home = window.KeepsLiftingMe.Home = function () {	
	};

	Home.prototype.fetchSongs = function(e,country){
	
		var id=$(e.currentTarget).data('id');
		var country=country || "ES"
		$.ajax({
	    type: 'GET',
	    url: 'https://api.spotify.com/v1/artists/'+id+'/top-tracks?country='+country,
	    success: home.renderSongs.bind(this),
	    error: function () {
	      console.log('Some error!');
	    }
	  });
	};
	Home.prototype.renderSongs = function(songs) {
	
	var eachSong = songs.tracks;
	$('.list_of_songs').html("");	
	for (i = 0; i < eachSong.length; i++) { 
		
   	$('.list_of_songs').append('<tr class="table_rows"> <td class="song_name">'+eachSong[i].name+'</td><td class "popularity">'+eachSong[i].popularity+'</td><td class="listen material-icons md-48"><a class="playButtonSpotify" href="'+eachSong[i].external_urls.spotify+'" target="_blank">play_circle_filled</td></tr>');
	}
	}
 var home = new Home();
	
})();