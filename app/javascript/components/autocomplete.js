function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const addressInput = document.getElementById('user_address');

    if (addressInput) {
      const autocomplete = new google.maps.places.Autocomplete(addressInput, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(addressInput, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
