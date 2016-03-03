if (typeof window.KeepsLiftingMe === 'undefined') {
  window.KeepsLiftingMe = {};
}
KeepsLiftingMe.init = function () {
  var spoti = new KeepsLiftingMe.Spotify;
  var home = new KeepsLiftingMe.Home;
  $('#band_spotifyID').on('change', spoti.prepareBands.bind(spoti));
  $('#search').on('click', spoti.searchBands.bind(spoti));
  $('.see_songs').on('click', home.fetchSongs.bind(this));
  
  
}
$(document).on('ready', KeepsLiftingMe.init);