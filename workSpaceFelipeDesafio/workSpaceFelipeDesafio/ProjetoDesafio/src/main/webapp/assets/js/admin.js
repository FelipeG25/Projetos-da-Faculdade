$(document).ready(function() {
	
	LUISA.PATH = "/ProjetoDesafio/rest/";
	
	LUISA.exibirAviso = function(aviso) {
		var modal = {
			title: "Mensagem",
			height: 250,
			width: 400,
			modal: true,
			buttons: {
				"OK": function() {
					$(this).dialog("close");
				}
			}
		};
		$("#modalAviso").html(aviso);
		$("#modalAviso").dialog(modal);
	};
	
});