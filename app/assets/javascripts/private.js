/**
 *  private.js
 *
 *  Author:   Allen Leis <allen@cobrain.com>
 *  Created:  Tue Sep 02 14:42:45 2014 -0400
 *
 *  Copyright (C) 2014
 *  For license information, see LICENSE.txt
 *
 *  ID: private.js [] allen.leis@gmail.com $
*/

'use strict';


$(document).ready(function () {

  // linkify all buttons with data-url
  $( "button[data-url]" ).on( "click", function(evt) {
    evt.preventDefault();
    console.log($( this ).attr('data-url'));
    window.location = $( this ).attr('data-url');
  });


});


