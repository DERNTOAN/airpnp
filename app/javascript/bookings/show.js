function countdownTimer(){
  setInterval(function(){
    document.getElementById("booking-timer").innerHTML = (new Date()).toLocaleTimeString();
}, 1000);
}


export{countdownTimer}
