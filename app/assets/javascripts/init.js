if (typeof window.KeepsLiftingMe === 'undefined') {
  window.KeepsLiftingMe = {};
}
KeepsLiftingMe.init = function () {
  var spoti = new KeepsLiftingMe.Spotify;
  $('#band_spotifyID').on('change', spoti.prepareBands.bind(spoti));
}
$(document).on('ready', KeepsLiftingMe.init);