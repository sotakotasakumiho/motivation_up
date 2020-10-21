$(document).on('turbolinks:load', function(){
  $('.scroll-js').jscroll({
    loadingHtml: 'now loading',
    autoTrigger: true,
    nextSelector: 'a.next',
    contentSelector: '.posts-index-item',
    padding: 20,
  });
});