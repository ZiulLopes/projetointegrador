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
            }
        });
    }
//});