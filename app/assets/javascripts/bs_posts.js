$(document).on('page:change', function() {
        var id_active_button = window.location.href;
          //console.log(id_active_button);
        id_active_button = id_active_button.substr((id_active_button.lastIndexOf('/') + 1));
          //console.log(id_active_button);
        $('#' + id_active_button).addClass("active");
      });
        
// $(".btn-group > .btn").click(function(e){
//         $(this).addClass("active");
//     });