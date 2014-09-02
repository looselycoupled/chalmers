/**
 *  sidebar.js
 *  Setup for expandable sidebar navigation.
 *
 *  NOTE: parts of this code were copied from the devoops bootstrap
 *    theme javascript files
 *
 *  Created:  Tue Sep 02 14:42:45 2014 -0400
 *
 *  ID: sidebar.js [] allen.leis@gmail.com $
*/
/* globals $ */
'use strict';


$(document).ready(function () {

  // show or hide sidebar nav
  $('.show-sidebar').on('click', function (e) {
    e.preventDefault();
    $('div#main').toggleClass('sidebar-show');
  });

  // sidebar nav management
  $('.main-menu').on('click', 'a', function (e) {
    var parents = $(this).parents('li');
    var li = $(this).closest('li.dropdown');
    var another_items = $('.main-menu li').not(parents);
    another_items.find('a').removeClass('active');
    another_items.find('a').removeClass('active-parent');

    if ($(this).hasClass('dropdown-toggle') || $(this).closest('li').find('ul').length === 0) {
      $(this).addClass('active-parent');
      var current = $(this).next();
      if (current.is(':visible')) {
        li.find('ul.dropdown-menu').slideUp('fast');
        li.find('ul.dropdown-menu a').removeClass('active');
      }
      else {
        another_items.find('ul.dropdown-menu').slideUp('fast');
        current.slideDown('fast');
      }
    }
    else {
      if (li.find('a.dropdown-toggle').hasClass('active-parent')) {
        var pre = $(this).closest('ul.dropdown-menu');
        pre.find('li.dropdown').not($(this).closest('li')).find('ul.dropdown-menu').slideUp('fast');
      }
    }

    // apply active class (and remove from other tags)
    if ($(this).hasClass('active') === false) {
      $(this).parents('ul.dropdown-menu').find('a').removeClass('active');
      $(this).addClass('active');
    }

    // prevent navigation for placeholder links in menu tree
    if ($(this).attr('href') == '#') {
      e.preventDefault();
    }

  });

});
