// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// const imagePath = (name) => images(name, true)



// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'




// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  if (document.querySelector("#booking")) {
    Swal.fire({
      title: "Congratulations",
      text: 'Your booking has been created!',
      icon: 'success',
      showDenyButton: true,
      confirmButtonText: `Back to artpiece`,
      denyButtonText: `Go to bookings`,
      confirmButtonColor: '#252525',
      denyButtonColor: '#252525',
    }).then(result => {
      if (result.isConfirmed) {
        const link1 = document.querySelector('#artpiece-link');
        link1.click();
      } else {
        const link2 = document.querySelector('#bookings-link');
        link2.click();
      }

    })
  };
});
