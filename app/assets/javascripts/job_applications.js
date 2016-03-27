$(document).on('page:change', function() {
  $("#new-company-toggle").on("click", function() {
    $("#new-company-form").toggle()
  });
});
