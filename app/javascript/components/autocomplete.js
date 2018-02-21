function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var addressInput = document.getElementById('address_input');
    // (flat_address) id has to be changed!!!

    if (addressInput) {
      var autocomplete = new google.maps.places.Autocomplete(addressInput, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(addressInput, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
