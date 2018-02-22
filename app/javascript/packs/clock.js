//invokes functions as soon as window loads
window.onload = function(){
  time();
	setInterval(function(){
		time();
	}, 1000);
};

function getTimeRemaining(endtime){
  let t = endtime - Date.parse(new Date());
  let seconds = Math.floor( (t/1000) % 60 );
  let minutes = Math.floor( (t/1000/60) % 60 );
  let hours = Math.floor( (t/(1000*60*60)) % 24 );
  let days = Math.floor( t/(1000*60*60*24) );
  return {
    'total': t,
    'days': days,
    'hours': hours,
    'minutes': minutes,
    'seconds': seconds
  };
}


//gets current time and changes html to reflect it
function time(){
  const timer = document.getElementById("booking-timer");
  if (timer){
  let created = timer.dataset["created"];
  let endtime = new Date(parseFloat(created));

	var date = getTimeRemaining(endtime);
		minutes = date.minutes,
		seconds = date.seconds;

	// //make clock a 12 hour clock instead of 24 hour clock
	// hours = (hours > 12) ? (hours - 12) : hours;
	// hours = (hours === 0) ? 12 : hours;

	//invokes function to make sure number has at least two digits
	minutes = addZero(minutes);
	seconds = addZero(seconds);

	//changes the html to match results
	document.getElementsByClassName('minutes')[0].innerHTML = minutes;
	document.getElementsByClassName('seconds')[0].innerHTML = seconds;
  }
}

//turns single digit numbers to two digit numbers by placing a zero in front
function addZero (val){
	return (val <= 9) ? ("0" + val) : val;
}
