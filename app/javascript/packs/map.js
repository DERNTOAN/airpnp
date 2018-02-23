import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  var map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  let markers = JSON.parse(mapElement.dataset.markers);
  console.log(markers)
  let user_location = JSON.parse(mapElement.dataset.user_location);
  map.addMarker({
          map: map,
          draggable: true,
          animation: google.maps.Animation.BOUNCE,
          position: {lat: user_location.latitude, lng: user_location.longitude},
          icon: '/user-marker.png'
        });
  map.setCenter({lat: user_location.latitude, lng: user_location.longitude});
  map.addMarkers(markers)
  map.setZoom(15);
  // if (markers.length === 0) {
  //   map.setZoom(2);
  // } else if (markers.length === 1) {
  // } else {
//     map.fitLatLngBounds(markers);
//   }
}
autocomplete();

// let user_marker = new google.maps.Marker({
//   position: user,
//   map: map,
//   icon: iconBase + 'logo.png'
// });
