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

function flushBooking() {
  document.querySelector('.flush-button').addEventListener('click', (event) => {
    event.preventDefault();
    swal({
      title: "Are you done?",
      text: "Finish your session?",
      icon: "warning",
      buttons: ["Never mind", "I'm done!"],
    })
    .then((value) => {
      if (value === true){
        swal({
          title: "Do you want to leave a review?",
          icon: "success",
          buttons: ["No thank you", "Leave a review"],
        })
        .then((value) => {
          if (value === false){
            window.location.replace("/bathrooms")
          }
        })

      }
    });
  });
}

export { confirmBooking, flushBooking };
