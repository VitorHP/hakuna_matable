
$(document).ready(function(){
  $(".hakuna-matable tbody").selectable({ filter: "tr" });

  $(".hakuna-maform").on("submit", function(){
    var selected_ids = $.map($('input[type="checkbox"]:checked'), function(item){ return $(item).val() });
    $("#product_ids").val(selected_ids);
  });
});
