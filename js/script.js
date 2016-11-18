'use strict';

const button = $('.submit-button');
const search = $('.search-box');

button.on('click', () => {
  let searchQuery = search.val();
  if (!searchQuery) {
    return console.log('doesnt work');
  }

  $.getJSON(`http://lvh.me:8000/api/albums/${searchQuery}`, data => {
    console.log(data);
  });
});
