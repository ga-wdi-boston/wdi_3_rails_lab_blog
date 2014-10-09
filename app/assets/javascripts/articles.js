var ready;
ready = function() {
  $("#edit").editable({
    inlineMode: false,
    height: 400
    })
};

$(document).ready(ready);
$(document).on('page:load', ready);