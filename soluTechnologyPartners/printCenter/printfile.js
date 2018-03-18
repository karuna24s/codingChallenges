$(document).ready(function() {
  var container = $('div.container');
    $.ajax({
      type: 'GET',
      url: 'https://demo3662581.mockable.io/documents',
      dataType: 'json',
      success: function(data) {
        // data.documents.filename -> array
        $.each(data.documents.filename, function(index, filename) {
          // debugger
        container.append(filename + '<br/>')
        });
      }
    });
});
