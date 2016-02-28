// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
(function () {
	


	// var preOrderedBands = [];
	// var orderedBands = [];
		
	var Spotify = window.BandsOnFire.Spotify = function () {

	
	};
	///send the bands to the fetcher
	// Spotify.prototype.prepareBands = function() {
	// 	bands.forEach(spoti.fetchBands);
	// 	/////AQUÏ ES ON HAURIA DE PASSAR L?ARRAY DE PREORDERES A RENDER, A L'ACABAR EL FOREACH

	// };

	// Spotify.prototype.fetchBands = function(id) {
	// 	$.ajax({
	//     type: 'GET',
	//     url: 'https://api.spotify.com/v1/artists/' + id,
	//     success: spoti.prepareForRenderBands.bind(this),
	//     error: function () {
	//       console.log('Some error!');
	//     }
	//   });
	// };

	// Spotify.prototype.prepareForRenderBands = function(band) {
	// 	var name = band.name;
	// 	var picture = band.images[0].url;
	// 	var popularity = band.popularity;
	// 	var id = band.id;
	// 	preOrderedBands.push({id: id,name: name, picture: picture, popularity: popularity}); 
	// 	if (preOrderedBands.length === bands.length) {
			
	// 		orderedBands=spoti.orderBands(preOrderedBands, 'popularity');
	// 		spoti.renderBands();
	// 	}

		

			
	// };

	// Spotify.prototype.orderBands = function(array, key) {
	// 	return array.sort(function(a, b) {
	// 		var x = a[key]; var y = b[key];
	// 		return ((x < y) ? 1 : ((x > y) ? -1 :0));
	// 	});	
	// };

	// Spotify.prototype.renderBands = function(){	
	// 	for (i=0; i < orderedBands.length; i++){
	// 		var item = orderedBands[i]	
	// 	// $('.spoticontent').append('<tr class="table_rows"><td><div class="picture_bands"style="background-image:url("'+item.picture+'");"></div></td><td class="band_name">'+item.name+'</td><td class="popularity">'+item.popularity+'</td><td class="view_more">View more</td> </tr>');
	// 	$('.spoticontent').append('<tr class="table_rows"><td><div class="picture_bands img-circle"> <img src='+item.picture+'> </div></td><td class="band_name">'+item.name+'</td><td class="popularity">'+item.popularity+'</td><td class="view_more material-icons md-48" data-toggle="modal" data-target="#myModal" id="'+item.id+'">list</td> </tr>');
	// 	};
	// 	$('.view_more').on('click', spoti.fetchSongs.bind(this));
	// };

	// Spotify.prototype.fetchSongs = function(e,country){
	// 	console.log('en feth song')
	// 	var id=event.currentTarget.id;
	// 	var country=country || "ES"
	// 	$.ajax({
	//     type: 'GET',
	//     url: 'https://api.spotify.com/v1/artists/'+id+'/top-tracks?country='+country,
	//     success: spoti.renderSongs.bind(this),
	//     error: function () {
	//       console.log('Some error!');
	//     }
	//   });
	// };

	// Spotify.prototype.renderSongs = function(songs) {
	// 	var eachSong = songs.tracks;
	// 	$('.list_of_songs').html("");
		
		
	// 	for (i = 0; i < eachSong.length; i++) { 
 //    	$('.list_of_songs').append('<tr class="table_rows"> <td class="song_name">'+eachSong[i].name+'</td><td class "popularity">'+eachSong[i].popularity+'</td><td class="listen material-icons md-48"><a href="'+eachSong[i].external_urls.spotify+'" target="_blank">play_circle_filled</td></tr>');
	// 	}



	// }



	

	






	var spoti = new Spotify();
	
	
	 
	
	 
	
})();
