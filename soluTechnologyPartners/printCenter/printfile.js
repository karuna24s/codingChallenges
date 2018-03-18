// $(document).ready(function() {
//     // all custom jQuery will go here
//     // get request
//     // https://demo3662581.mockable.io/documents
//
// });
var container = $('div.container');
$('input#get').click(function() {
  $.ajax({
    type: 'GET',
    url: 'https://demo9134881.mockable.io/documents',
    dataType: 'json',
    succss: function(data) {
      $.each(data, function(documents) {
        $.each(documents, function(filename) {
          $.each(documents, function(item) {
            container.append(item + '</br>');
          });
          container.append('<br/></br>')
        });
      });
    }
  });
})
