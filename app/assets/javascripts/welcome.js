// In the following example, markers appear when the user clicks on the map.
// The markers are stored in an array.
// The user can then click an option to hide, show or delete the markers.
var map;
var markers = [];
var infoWindow = [];

function initialize() {
  // initialize the map centered on HK
  var hongKong = new google.maps.LatLng(22.288976, 114.171731);
  var mapOptions = {
    zoom: 12,
    center: hongKong,
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  // make an ajax request to /activites.json and add the result to the map
  $.get('/activities.json').done(function(activitiesData) {
    // for each activity in the activities table...
    activitiesData.forEach(function(activity) {

      // ...make a map marker
      var newMarker = addMarker(new google.maps.LatLng(activity.latitude, activity.longitude));

      // TODO: ADD AN INFO WINDOW WHEN THAT MARKER IS CLICKED
      // activity.name
      // activity.description
      // make an infowindow
      var infoWindow = new google.maps.InfoWindow({
        content: "<strong>" + activity.category + "</strong> " + activity.location + " " + activity.description
      });

      google.maps.event.addListener(newMarker, 'click', function() {
        infoWindow.open(map, newMarker);
      });
    });
  });
}

// Add a marker to the map and push to the array.
function addMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
  markers.push(marker);
  return marker;
}

google.maps.event.addDomListener(window, 'load', initialize);