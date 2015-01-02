$(function() {
  var faye = new Faye.Client('http://localhost:3000/faye');
  faye.subscribe("/messages/new", function(data) {
    eval(data);
  });
});