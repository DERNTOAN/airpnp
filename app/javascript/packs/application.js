import "bootstrap";
// import "../components/maps"
import "../bathroom/index"
import "../bookings/show"

// import { confirmBooking } from '../components/alert';
import { countdownTimer } from '../bookings/show';

import { filterBar, applyFilter } from '../bathroom/index';

countdownTimer();
filterBar();

