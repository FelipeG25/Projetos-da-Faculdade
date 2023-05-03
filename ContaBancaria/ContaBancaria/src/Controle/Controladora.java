package Controle;
import javax.swing.JOptionPane;
import Modelo.*;
import Visualização.EntradaSaida;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;

public class Controladora {

	Conta conta = new Conta();
	Movimentacao movimentacao = new Movimentacao();
	EntradaSaida visualizacao = new EntradaSaida();

	public void exibeMenu() {

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDateTime now = LocalDateTime.now();
		String dataAtual = dtf.format(now);
		System.out.println(dataAtual);

		int opcao = 0;
		int tipoConta = 0;
		Integer criarConta;
		String conversaoIndex = null;
		String titularDaConta = null;
		String infoDeposito = null;
		String infoSaque = null;
		Double mostrarSaldo = (double) 0;
		Double deposito = null;
		Double saque = null;
		Double emprestimo = null;

		do{
			criarConta = EntradaSaida.criarConta();

			switch(criarConta) {

			case 0:

				tipoConta = EntradaSaida.tipoDaConta();
				System.out.println("Tipo da conta: "+tipoConta+"\n");

				titularDaConta = JOptionPane.showInputDialog(null, "Informe o seu nome:", 
						"Titular da Conta", JOptionPane.INFORMATION_MESSAGE);

				System.out.println("Nome do usuário: "+titularDaConta+"\n");

				while(titularDaConta.matches("^-?\\d*(\\.\\d+)?$")) {
					EntradaSaida.mostrarErroTitular();
					titularDaConta = JOptionPane.showInputDialog(null, "Informe o seu nome novamente:", "Titular", JOptionPane.INFORMATION_MESSAGE);
				}

				JOptionPane.showMessageDialog(null, "Conta criada com êxito!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
				break;

			case 1:

				EntradaSaida.encerrarPrograma();
				System.exit(0);

			}
			break;

		}while(criarConta != 1);

		do {
			opcao = EntradaSaida.solicitarOpcao();

			switch(opcao) {

			case 0:

				deposito = visualizacao.pedirDeposito();
				System.out.println("Quantia depositada: "+deposito);


				while(deposito <= 0) {
					JOptionPane.showMessageDialog(null, "Você informou uma quantidade menor ou igual a zero.\n"
							+ "Porfavor, tente novamente:", "Erro", JOptionPane.INFORMATION_MESSAGE);
					deposito = visualizacao.pedirDeposito();
				}

				if(deposito != null) {
					JOptionPane.showMessageDialog(null, "Depósito efetuado!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
				}

				conta.setSaldo(conta.getSaldo() + deposito);
				movimentacao = new Movimentacao();
				movimentacao.setValor(deposito);
				movimentacao.setTipo(0.0);
				movimentacao.setData(dataAtual);
				conta.movimentoConta(movimentacao);				

				mostrarSaldo = conta.getSaldo();
				break;

			case 1:

				if(tipoConta == 0) {

					if(mostrarSaldo == 0) {
						JOptionPane.showMessageDialog(null, "Você pode fazer um empréstimo de até R$1000.\n"
								+ "Todo empréstimo que você fizer será descontado de seu saldo e você tera que pagar futuramente.", "Aviso" ,JOptionPane.INFORMATION_MESSAGE);
						int respostaEmprestimo = EntradaSaida.emprestimo();
						if(respostaEmprestimo == 0) {
							emprestimo = visualizacao.realizarEmprestimo();

							if(emprestimo != null) {
								JOptionPane.showMessageDialog(null, "Empréstimo efetuado!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
							}
						}else {
							JOptionPane.showMessageDialog(null, "Ok, tenha um bom dia :)", "Prosseguir", JOptionPane.INFORMATION_MESSAGE);
							break;
						}

						saque = emprestimo;

					}else {
						saque = visualizacao.pedirSaque();
						System.out.println("Quantia sacada: "+saque);

					}

					if(this.conta.getSaldo() - saque < -1000) {
						JOptionPane.showMessageDialog(null, "Impossível de prosseguir, você atingiu o limite máximo de empréstimo\n"
								+ "Esse aviso irá retornar você para o menu principal do banco.", "Aviso", JOptionPane.INFORMATION_MESSAGE);
						break;
					}

					while(saque <= 0) {
						JOptionPane.showMessageDialog(null, "Você informou uma quantidade menor ou igual a zero.\n"
								+ "Porfavor, tente novamente:", "Erro", JOptionPane.INFORMATION_MESSAGE);
						saque = visualizacao.pedirSaque();
					}
					if(mostrarSaldo != 0 && saque > 0) {
						JOptionPane.showMessageDialog(null, "Saque efetuado!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
					}

					conta.setSaldo(conta.getSaldo() - saque);
					movimentacao = new Movimentacao();
					movimentacao.setValor(saque);
					movimentacao.setTipo(1.0);
					movimentacao.setData(dataAtual);
					conta.movimentoConta(movimentacao);

					mostrarSaldo = conta.getSaldo();

				}else if(tipoConta == 1) {

					if(conta.getSaldo() == 0) {
						JOptionPane.showMessageDialog(null, "Você não pode sacar uma quantia enquanto seu saldo for 0.\n"
								+ "Por favor, tente novamente", "Aviso", JOptionPane.INFORMATION_MESSAGE);
						break;
					}
					
					JOptionPane.showMessageDialog(null, "Você gostaria de sacar dinheiro de sua conta poupança? \n"
							+ "Você só irá lucrar dinheiro depois de um tempo.");
					Double opcaoPoupanca = EntradaSaida.menuPoupanca();
					
					if(opcaoPoupanca == 0) {
						saque = visualizacao.pedirSaque();
						System.out.println("Quantia sacada: "+saque);

						
						if(saque != 0) {
							JOptionPane.showMessageDialog(null, "Saque efetuado!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
						}
						
						while(saque > conta.getSaldo()) {
							JOptionPane.showMessageDialog(null, "Você não pode sacar mais que o seu saldo atual.\n"
									+ "Por favor, tente novamente.", "Aviso", JOptionPane.INFORMATION_MESSAGE);
							saque = visualizacao.pedirSaque();
							System.out.println("Quantia sacada: "+saque);

							if(saque != 0) {
								JOptionPane.showMessageDialog(null, "Saque efetuado!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
							}
						}
						
						
						
						conta.setSaldo(conta.getSaldo() - saque);
						movimentacao = new Movimentacao();
						movimentacao.setValor(saque);
						movimentacao.setTipo(1.0);
						movimentacao.setData(dataAtual);
						conta.movimentoConta(movimentacao);

						while(saque <= 0) {
							JOptionPane.showMessageDialog(null, "Você não pode sacar uma quantidade negativa ou menor que zero. \n"
									+ "Por favor, tente novamente:", "Aviso", JOptionPane.INFORMATION_MESSAGE);
							saque = visualizacao.pedirSaque();	
							if(saque > 0) {
								JOptionPane.showMessageDialog(null, "Saque realizado com êxito!", "Sucesso", JOptionPane.INFORMATION_MESSAGE);
							}
						}

					}else if(opcaoPoupanca == 1) {
						break;
					}
				}
				break;

			case 2:
				mostrarSaldo = conta.getSaldo();
				JOptionPane.showMessageDialog(null, "Saldo atual: "+mostrarSaldo, "Saldo", JOptionPane.INFORMATION_MESSAGE);
				break;

			case 3:

				conversaoIndex = visualizacao.conversaoDeIndex(tipoConta);

				JOptionPane.showMessageDialog(null, "Seus dados:\n\n "
						+ "Nome do titular: "+titularDaConta+"\n"
						+ " Tipo da conta: "+conversaoIndex+"\n"
						+ " Saldo da conta: "+mostrarSaldo, "Dados da conta", JOptionPane.INFORMATION_MESSAGE);
				break;

			case 4:
				infoDeposito = this.conta.extratoDeposito();
				infoSaque = this.conta.extratoSaque();
				conversaoIndex = visualizacao.conversaoDeIndex(tipoConta);


				JOptionPane.showMessageDialog(null, "Dados gerais da conta:\n\n"
						+ "Nome do titular: "+titularDaConta+"\n"
						+ "Tipo da conta: "+conversaoIndex+"\n"
						+ "Saldo atual: "+mostrarSaldo+"\n\n"
						+ ""+infoDeposito+"\n"
						+ ""+infoSaque+"", "Geral", JOptionPane.INFORMATION_MESSAGE);
				break;

			case 5:

				infoDeposito = this.conta.extratoDeposito();
				EntradaSaida.exibeExtratoDeposito(infoDeposito);
				break;

			case 6:

				infoSaque = this.conta.extratoSaque();
				EntradaSaida.exibeExtratoSaques(infoSaque);
				break;
			}


		}while(opcao!=7);

		EntradaSaida.encerrarPrograma();

		System.exit(0);

	}



}