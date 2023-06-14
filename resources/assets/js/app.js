$.fn.editable.defaults.mode = 'inline';
$.fn.editable.defaults.ajaxOptions = {type: 'PUT'};


$(document).ready(function(){
    $(".set-guide-number").editable();

    $(".set-status").editable({
        source: [
            {value:"creado", text:"Creado"},
            {value:"enviado", text:"Enviado"},
            {value:"recibido", text:"Recibido"}
        ]
    });
});