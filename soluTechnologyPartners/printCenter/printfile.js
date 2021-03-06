$(document).ready(function() {
  var table = $('.printForm');
    $.ajax({
      type: 'GET',
      url: 'https://demo3662581.mockable.io/documents',
      dataType: 'json',
      success: function(data) {
        // data.documents.filename -> array
        $.each(data.documents.filename, function(index, filename) {

            var tr = `<tr id="${filename}">
              <td>${filename}</td>
              <td><input id="${filename}-check1" name="filename[${filename}][print]" value="true" type="checkbox"/></td>
              <td><input id="${filename}-check2" name="filename[${filename}][color]" value="true" type="checkbox"/></td>
              <td><text><input id="${filename}-notes" name="filename[${filename}][notes]" placeholder="Notes..."></text></td>
            </tr> `
          table.append(tr)

          if (filename.match(/.zip/i)) {
            var fileExtension = filename.split('.').pop();
            if (fileExtension === 'zip') {
              var el = document.getElementById(filename);
              var check1 = document.getElementById(`${filename}-check1`);
              var check2 = document.getElementById(`${filename}-check2`);
              var notes = document.getElementById(`${filename}-notes`);
              check1.disabled = true;
              check2.disabled = true;
              notes.disabled = true;
              el.style.color = "grey";
            }
          }
        });
      }
    });

    $('.submit').on('click', function(e) {
      e.preventDefault();
      // create a for loop and iterate over the every row and if the input values are checked
      var array = $( "form" ).serializeArray();
      var object = { documents: { document: []} };
      for (var i = 0; i < array.length; i++) {
        if (array[i]['name'].includes('filename')) {
          // object[array[i]['name']] = array[i]['value'];
        } else {
        object[array[i]['name']] = array[i]['value'];
        }
      }
      // object["printRequest"]["deliverTo"] = str[0]["value"]
      $.ajax({
        type: 'PUT',
        url: 'https://demo3662581.mockable.io/print_jobs',
        dataType: 'json',
        // body:
        success:function(response){
           alert(`Your print job has been submitted! The confirmation id is ${response.requestConfirmation.printJobId}.`);
        }
      })
    });

    $('.cancel').on('click', function(e) {
      e.preventDefault();
      $.ajax({
        type: 'DELETE',
        url: 'https://demo3662581.mockable.io/print_jobs',
        dataType: 'json',
        success:function(response){
           alert(`Your print job has been cancelled.`);
        }
      })
    });
});
