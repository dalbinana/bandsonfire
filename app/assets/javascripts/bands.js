(function () {
	var Spotify = window.KeepsLiftingMe.Spotify = function () {	
	};

	Spotify.prototype.prepareBands = function(id) {
		var id=$('#band_spotifyID').val();
		spoti.fetchPictureAndName(id);
	};

	Spotify.prototype.fetchPictureAndName = function(id) {
		$.ajax({
	    type: 'GET',
	    url: 'https://api.spotify.com/v1/artists/' + id,
	    success: spoti.renderPictureAndName.bind(this),
	    error: function () {
	      console.log('Some error!');
	    }
	  });
	};

	Spotify.prototype.renderPictureAndName = function(band) {
		var picture = band.images[0].url;
		var name = band.name;
		$('.picture_bands').css("background-image", "url(''+picture+'')");
		$('#band_name').val(''+name+'')
		$('#band_picture').val(''+picture+'')		
	};

	Spotify.prototype.searchBands = function(name) {
		$(".spoticontent").empty();
		var name=$('#band_name').val();
		spoti.fetchBandsByName(name);
	}

	Spotify.prototype.fetchBandsByName = function(name) {
		$.ajax({
	    type: 'GET',
	    url: 'https://api.spotify.com/v1/search?q='+name+'&type=artist',
	    success: spoti.renderBands.bind(this),
	    error: function () {
	      console.log('Some error!');
	    }
	  });

	}

	Spotify.prototype.renderBands = function(bands) {

		var band = bands.artists.items
		band.forEach( function(band) {
			$('.modal-body').after('<table class="table table-condensed table-hover spoticontent"><tr class="select-rows addToForm" data-id='+ band.id +' data-picture='+band.images[0].url+' data-name="'+band.name+'"><td><div class="picture_bands_small" style="background-image: url('+band.images[0].url+')";></div></td><td>'+band.name+'</td></tr></table>' );
			

			$('.addToForm').on('click', spoti.renderInForm.bind(this));

			
		})
		
	}

	Spotify.prototype.renderInForm = function(e) {

		var spotifyID=$(e.currentTarget).data('id');
		var name=$(e.currentTarget).data('name');
		var picture=$(e.currentTarget).data('picture');
		$('#band_spotifyID').val(spotifyID);
		$('#band_name').val(name);
		$('.picture_form').css("background-image", "url('"+picture+"')");
		$('#band_picture').val(picture);	
	}


	var spoti = new Spotify();
	
	
 
	
})();