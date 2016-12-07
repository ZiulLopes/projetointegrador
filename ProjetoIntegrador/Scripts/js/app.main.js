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

// Validar senha
function ValidPass(pass) {
    var pass1 = document.getElementById("textSenha");
    var pass2 = document.getElementById("textSenha2");
    if (pass1.value != pass2.value) {
        alertify.error("Senhas devem ser iguais!");
        pass1.value = "";
        pass2.value = "";
    }
}

//Start Jquery
$(document).ready(function () {
    $(".validCpf").mask("999.999.999-99");
    $(".maskcpf").mask("999.999.999-99");
    $(".validCNPJ").mask("99.999.999/9999-99");
    $(".maskcnpj").mask("99.999.999/9999-99");

    $(".dtNascimento").mask("99/99/9999");

    $(".maskphone").mask("(99) 9999-9999");

});