LUISA = new Object();
LUISA.agendamento = new Object();

LUISA.agendamento.cadastrar = function() {

	var agendar = new Object();
	agendar.telefone = document.frmCadastrar.telefone.value;
	agendar.whatsapp = document.frmCadastrar.whatsapp.value;
	agendar.data = document.frmCadastrar.data.value;
	agendar.hora = document.frmCadastrar.hora.value;

	if ((agendar.telefone == "") || (agendar.whatsapp == "") || (agendar.data == "") || (agendar.hora == "")) {
		LUISA.exibirAviso("Preencha todos os campos!");
	} else {
		$.ajax({
			type: "POST",
			url: LUISA.PATH + "agenda/inserir",
			data: JSON.stringify(agendar),
			success: function(msg) {
				LUISA.exibirAviso(msg);
				$("#addAgendamento").trigger("reset");
				LUISA.agendamento.dadosArmazenados();
				Swal.fire({
					icon: 'Success',
					title: 'Parabéns',
					text: 'Horário agendado com sucesso.',
				})

			},
			error: function(msg) {
				LUISA.exibirAviso(msg);
				Swal.fire({
					icon: 'error',
					title: 'Opa',
					text: 'Erro ao agendar horário.',
				})
			}
		});
	}
}

//var listaDeAgendamento = "<%= listArmazenamento %>";

LUISA.agendamento.exibirTabela = function(listaDeAgendamento) {

	var tabela = "<table class='tabelaGeral'>" +
		"<tr class='tabelaJS'>" +
		"<th class='tabelaJS'>Telefone</th>" +
		"<th class='tabelaJS'>Whatsapp</th>" +
		"<th class='tabelaJS'>Data</th>" +
		"<th class='tabelaJS'>Hora</th>" +
		"<th class='acoes tabelaJS'>Ações</th>"
	"</tr>";

	if (listaDeAgendamento != undefined && listaDeAgendamento.length > 0) {

		for (var i = 0; i < listaDeAgendamento.length; i++) {
			tabela += "<tr class='tabelaJS'>" +
				"<td class='tabelaJS'>" + listaDeAgendamento[i].telefone + "</td>" +
				"<td class='tabelaJS'>" + listaDeAgendamento[i].whatsapp + "</td>" +
				"<td class='tabelaJS'>" + listaDeAgendamento[i].data + "</td>" +
				"<td class='tabelaJS'>" + listaDeAgendamento[i].hora + "</td>" +
				"<td class='tabelaJS'>" +
				"<a onclick=\"LUISA.agendamento.excluir('" + listaDeAgendamento[i].id + "')\"><img src='../assets/img/lixeira.png' alt='Excluir horários agendados'></a>" +
				"<a onclick=\"LUISA.agendamento.exibirEdicao('" + listaDeAgendamento[i].id + "')\"><img src='../assets/img/editar.png' alt='Editar horários agendados'></a>" +
				"</td>" +
				"</tr>"
		}
	} else if (listaDeAgendamento == "") {
		tabela += "<tr><td colspan='6'>Nenhum registro encontrado</td></tr>";
	}
	tabela += "</table>";
	return tabela;
};

LUISA.agendamento.dadosArmazenados = function() {
	$.ajax({
		type: "GET",
		url: LUISA.PATH + "agenda/armazenar",
		success: function(dados) {

			$("#listaAgendamento").html("");
			$("#listaAgendamento").html(LUISA.agendamento.exibirTabela(dados));

		},
		error: function(info) {
			LUISA.exibirAviso("Erro ao consultar o banco de dados: " + info.status + " - " + info.statusText);
		}
	});
};

LUISA.agendamento.excluir = function(id) {
	Swal.fire({
		title: 'Você tem certeza?',
		text: "Você não poderá reverter essa ação depois!",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Sim, delete isso!'
	}).then((result) => {
		if (result.isConfirmed) {
			$.ajax({
				type: "DELETE",
				url: LUISA.PATH + "agenda/excluir/" + id,
				success: function() {
					LUISA.agendamento.dadosArmazenados();
					Swal.fire(
						'Deletado!',
						'Seu horário agendado foi deletado.',
						'success'
					)
				},
				error: function() {
					Swal.fire({
						icon: 'error',
						title: 'Opa...',
						text: 'Erro ao excluir o agendamento selecionado!',
					})
				}
			})

		}
	})
}

LUISA.agendamento.editar = function() {

	var agenda = new Object();
	agenda.id = document.frmEditaAgenda.idAgenda.value;
	agenda.telefone = document.frmEditaAgenda.telefone.value;
	agenda.whatsapp = document.frmEditaAgenda.whats.value;
	agenda.data = document.frmEditaAgenda.dataEscolhida.value;
	agenda.hora = document.frmEditaAgenda.hora.value;

	$.ajax({
		type: "PUT",
		url: LUISA.PATH + "agenda/alterar",
		data: JSON.stringify(agenda),
		success: function(msg){
			LUISA.agendamento.dadosArmazenados();
			LUISA.exibirAviso(msg);
			
			$("#modalEditaAgenda").dialog("close");
		},
		error: function(info){
			LUISA.exibirAviso("Erro ao editar o agendamento escolhido"+ info.status + " - " + info.statusText);
		}
	})
					
}

LUISA.agendamento.exibirEdicao = function(id) {
	$.ajax({
		type: "GET",
		url: LUISA.PATH + "agenda/buscarPorId",
		data: "id=" + id,
		success: function(agenda) {

			document.frmEditaAgenda.idAgenda.value = agenda.id;
			document.frmEditaAgenda.telefone.value = agenda.telefone;
			document.frmEditaAgenda.whats.value = agenda.whatsapp;
			document.frmEditaAgenda.dataEscolhida.value = agenda.data;
			document.frmEditaAgenda.hora.value = agenda.hora;

			var modalEditaAgenda = {
				title: "Editar horário",
				height: 400,
				width: 550,
				modal: true,
				
				buttons: {
					"Salvar": function() {
						LUISA.agendamento.editar();
					},
					"Cancelar": function() {
						$(this).dialog("close");
					}
				},
				close: function() {

				}
			};
			
			$("#modalEditaAgenda").dialog(modalEditaAgenda);
			
		},
		error: function() {
			Swal.fire({
				icon: 'error',
				title: 'Opa',
				text: 'Erro ao buscar horários para a edição.',
			})
		}
	})
}