/*
 *      System app functions
 */

//Carregar HTML
//document.addEventListener("DOMContentLoaded", function () {

function AddFriend(id) {
    $.ajax({
        type: "POST",
        url: "/Amigos/AdcionarAmizade",
        data: { id: id },
        success: function (data) {
            alertify.confirm("Amizade confirmada!");
            $(".actions").load("AmigoInfo .actions");
        },
        error: function (data) {
            alertify.error("Erro ao adicionar");
            $(".actions").load("AmigoInfo .actions");
        }
    });
}

function ExcFriend(id) {
    $.ajax({
        type: "POST",
        url: "/Amigos/ExcluirAmizade",
        data: { id: id },
        success: function (data) {
            alertify.confirm("Amizade excluida!");
            $(".actions").load("AmigoInfo .actions");
        },
        error: function (data) {
            alertify.error("Erro ao excluir");
            $(".actions").load("AmigoInfo .actions");

        }
    });
}
//});

//Add data-id no modal para deletar o registro
$(document).on("click", ".editmodal", function () {
    var myBookId = $(this).data('id');
    $(".modal-body #regId").val(myBookId);
    // As pointed out in comments, 
    // it is superfluous to have to manually call the modal.
    // $('#addBookDialog').modal('show');
});

// Editar Registro add descricao no arquivo
function EditReg() {
    var elemId = document.getElementById("regId");
    var elemDesc = document.getElementById("DESCRICAO");

    $.ajax({
        type: "POST",
        url: "/Arquivos/Edit",
        data: { id: elemId.value, descricao: elemDesc.value },
        success: function (data) {
            elemDesc.value = "";
            alertify.success("Add descrição no arquivo!");
        },
        error: function (data) {
            alertify.error('Erro ao excluir!\nReporte ao desenvolvedor!');
        }
    });
}