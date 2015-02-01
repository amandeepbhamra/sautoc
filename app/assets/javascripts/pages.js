var ready = function(){
  var render, select;

  render = function(term, data, type) {
    return term;
  }

  select = function(term, data, type){
    $('#search').val(term);
    $('ul#soulmate').hide();

    return window.location.href = data.link
  }

  $('#search').soulmate({
    url: '/autocomplete/search',
    types: ['categories','vendors'],
    renderCallback : render,
    selectCallback : select,
    minQueryLength : 2,
    maxResults     : 5
  })
}
$(document).ready(ready);