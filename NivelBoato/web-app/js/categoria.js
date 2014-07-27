$(document).ready(function() {

    $(".btn-danger").on("click", function() {
        var id = $(this).attr("id");
        bootbox.dialog({
            message: "Confirma a exclusão da categoria?",
            title: "Excluir Categoria",
            buttons: {
                success: {
                    label: "Ok",
                    className: "btn-success",
                    callback: function() {
                        $.ajax({
                            url: "remove/"+ id
                        })
                        location.reload();
                    }
                },
                danger: {
                    label: "Cancelar"
                }
            }
        });


    });
});


