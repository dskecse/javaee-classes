$(document).ready(function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    $.post('loginServlet', $(this).serialize(), function(response) {
      $('#message').text(response).show().delay(1500).fadeOut(800);
    });
  });
});
