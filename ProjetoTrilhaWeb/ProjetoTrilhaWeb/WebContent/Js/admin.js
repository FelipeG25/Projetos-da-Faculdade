COLDIGO = new Object();

$(document).ready(function() {

	COLDIGO.PATH = "/ProjetoTrilhaWeb/rest/";

	$("header").load("/ProjetoTrilhaWeb/pages/admin/general/header.html");
	$("footer").load("/ProjetoTrilhaWeb/pages/admin/general/footer.html");

	COLDIGO.carregaPagina = function(pagename) {
		$("section").empty();
		$("section").load(pagename + "/", function(response, status, info) {
			if (status == "error") {
				var msg = "Houve um erro ao encontrar a página: " + info.status + " - " + info.statusText;
				$("section").html(msg);
			}
		});
	}
	
	//Exibe os valores financeiros no formato da moeda real
	COLDIGO.formatarDinheiro = function(valor){
		return valor.toFixed(2).replace('.',',').replace(/(\d)(?=(\d{3})+\,)/g, "$1.");
	}

	COLDIGO.exibirAviso = function(aviso) {
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