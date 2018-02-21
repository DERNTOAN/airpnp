import swal from 'sweetalert';

function confirmBooking() {
  document.getElementById('confirm-booking').addEventListener('click', () => {
    swal({

      title: "are you sure?",
      text: "Book this bathroom?",
      icon: "warning",
      buttons: ["Never mind", "Let's go!"],
    })
  });
}

export { confirmBooking };
