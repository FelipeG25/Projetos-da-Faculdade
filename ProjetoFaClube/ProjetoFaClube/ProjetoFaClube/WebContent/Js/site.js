function validaInscricao() {
	var nome = document.frmInscricao.txtnome.value
	var expRegNome = new RegExp("^[A-zÀ-ü]{3,}([ ]{1}[A-zÀ-ü]{2,})+$")

	if (!expRegNome.test(nome)) {
		alert("Preencha o campo Nome corretamente.")
		document.frmInscricao.txtnome.focus()
		return false
	}

	var fone = document.frmInscricao.txtfone.value
	var expRegFone = new RegExp("^[(]{1}[1-9]{2}[)]{1}[0-9]{4,5}[-]{1}[0-9]{4}$")

	if (!expRegFone.test(fone)) {
		alert("Preencha o campo Telefone corretamente.")
		document.frmInscricao.txtfone.focus()
		return false
	}

	var email = document.frmInscricao.txtemail.value
	var expRegEmail = new RegExp("^[A-z_.-0123456789]{3,}[@]{1}(gmail|hotmail){1}[.]{1}(com|br)$")

	if (!expRegEmail.test(email)) {
		alert("Preencha o campo E-mail corretamente.")
		document.frmInscricao.txtemail.focus()
		return false
	}

	var dataNascimento = document.frmInscricao.txtdata.value
	var expRegData = new RegExp("^(0[1-9]|[1-2][0-9]|3[0-1])(/)(0[1-9]|1[0-2])(/)(19[2-9][0-99]|200[0-9]|201[0-9]|2022)$")

	if (!expRegData.test(dataNascimento)) {
		alert("Preencha o campo Data de Nascimento corretamente.")
		document.frmInscricao.txtdata.focus()
		return false
	}

	return true;
}

function validarRadio() {
	validaInscricao()

	var validacao = false;
	var x = document.frmInscricao.txtsexo;

	//console.log(x)

	for (var i = 0; i < x.length; i++) {
		if (x[i].checked) {
			validacao = true;
			break;
		}
	}

	if (validacao) {
		alert("Opção de gênero marcada.");
	} else {
		alert("Escolha ao menos uma opção de gênero.");
	}
	validarCheckbox()
}

function validarCheckbox() {
	var checkbox = document.frmInscricao.txtparticipar;

	if (checkbox.checked) {
		document.getElementById("idFormulario").reset();
		alert("Caixa marcada. Você pode enviar.");
	} else {
		alert("Caixa não marcada. Impossível de prosseguir.");
	}
}

$(document).ready(function() {
	$('#fone').mask("(00)0000-0000");
});

$(document).ready(function() {
	$("header").load("/ProjetoFaClube/Páginas/Sites/general/cabecalho.html");
	$("footer").load("/ProjetoFaClube/Páginas/Sites/general/rodape.html");
});