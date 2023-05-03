package Modelo;
import java.util.ArrayList;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class Conta {

	private String titularDaConta;
	private int tipo;
	private static double saldo = 0;
	private ArrayList<Movimentacao> listaDeMovimentacao = new ArrayList<Movimentacao>();
	private ArrayList<Conta> listaDeSaldo = new ArrayList<Conta>();

	public String getTitularDaConta() {
		return titularDaConta;
	}

	public void setTitularDaConta(String titularDaConta) {
		this.titularDaConta = titularDaConta;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}

	public ArrayList<Movimentacao> getListaDeMovimentacao(){
		return listaDeMovimentacao;
	}

	public void setListaDeMovimentacao(ArrayList<Movimentacao> listaDeMovimentacao) {
		this.listaDeMovimentacao = listaDeMovimentacao;
	}

	public ArrayList<Conta> getListaDeSaldo(){
		return listaDeSaldo;
	}

	public void setListaDeSaldo(ArrayList<Conta> listaDeSaldo) {
		this.listaDeSaldo = listaDeSaldo;
	}

	public void movimentoConta(Movimentacao movimentacao) {
		this.listaDeMovimentacao.add(movimentacao);
	}

	public String extratoDeposito() {

		String infoExtrato = "Extrato dos Depósitos:\n";

		for(Movimentacao infoMovimentacao:this.listaDeMovimentacao) {
			if(infoMovimentacao.getTipo() == 0.0) {

				infoExtrato += "Foi depositado: R$"+infoMovimentacao.getValor()+ " no dia " +infoMovimentacao.getData()+"\n";

			}

		}
		return infoExtrato;
	}

	public String extratoSaque() {

		String infoExtrato = "Extrato dos saques:\n";

		for(Movimentacao infoMovimentacao:this.listaDeMovimentacao) {
			if(infoMovimentacao.getTipo() == 1.0) {

				infoExtrato += "Foi sacado: R$"+infoMovimentacao.getValor()+ " no dia " +infoMovimentacao.getData()+"\n";	

			}
		}
		return infoExtrato;

	}

}