function initMap() {
  var location = {lat: 16.091613, lng: 108.149102};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: location
  });

  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
}
