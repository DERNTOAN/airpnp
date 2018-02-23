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
  let flush_button = document.querySelector('.flush-button')
  if (flush_button){
    flush_button.addEventListener('click', (event) => {
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
            console.log(value);

            if (value === null){
              console.log("here");
              window.location.replace("/bathrooms");
            } else {
              console.log(flush_button.dataset.reviewpath);
              window.location.replace(flush_button.dataset.reviewpath);
            }
          })

        }
      });
    });
  }
}

export { confirmBooking, flushBooking };
