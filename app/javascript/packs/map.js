import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  const user_marker = JSON.parse(mapElement.dataset.user_marker);
  console.log(markers);
  console.log(user_marker);
  map.setCenter(user_marker.lat, user_marker.lng);
  map.addMarker(user_marker);
  map.addMarkers(markers);
  map.setZoom(14);
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
