// In the following example, markers appear when the user clicks on the map.
// The markers are stored in an array.
// The user can then click an option to hide, show or delete the markers.
var map;
var markers = [];

function initialize() {
  var hongKong = new google.maps.LatLng(22.288976, 114.171731);

  var mapOptions = {
    zoom: 12,
    center: hongKong,
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  addMarker(hongKong);

  addMarker(new google.maps.LatLng(22.275251,114.186776));
  addMarker(new google.maps.LatLng(22.337409,114.187459));

  // This event listener will call addMarker() when the map is clicked.
  google.maps.event.addListener(map, 'click', function(event) {
    // addMarker(event.latLng);
  });
}



// Add a marker to the map and push to the array.
function addMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
  markers.push(marker);
}

// // Sets the map on all markers in the array.
// function setAllMap(map) {
//   for (var i = 0; i < markers.length; i++) {
//     markers[i].setMap(map);
//   }
// }

// // Removes the markers from the map, but keeps them in the array.
// function clearMarkers() {
//   setAllMap(null);
// }

// // Shows any markers currently in the array.
// function showMarkers() {
//   setAllMap(map);
// }


google.maps.event.addDomListener(window, 'load', initialize);