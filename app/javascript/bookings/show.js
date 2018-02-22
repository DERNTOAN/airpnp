// function getTimeRemaining(endtime){
//   let t = endtime - Date.parse(new Date());
//   let seconds = Math.floor( (t/1000) % 60 );
//   let minutes = Math.floor( (t/1000/60) % 60 );
//   let hours = Math.floor( (t/(1000*60*60)) % 24 );
//   let days = Math.floor( t/(1000*60*60*24) );
//   return {
//     'total': t,
//     'days': days,
//     'hours': hours,
//     'minutes': minutes,
//     'seconds': seconds
//   };
// }

// function countdownTimer(){
//   const timer = document.getElementById("booking-timer");
//   if (timer){
//   let created = timer.dataset["created"];
//   let endtime = new Date(parseFloat(created));
//   console.log(endtime);


//   setInterval(function(){
//     let t = getTimeRemaining(endtime)
//     timer.innerHTML = '00: ' + t.minutes + ':' + t.seconds;
//     if(t.total<=0){
//       clearInterval(timeinterval);
//     }
//   }, 1000);
// }
// }


// export{countdownTimer}
