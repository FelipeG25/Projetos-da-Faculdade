package Visualiza��o;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;

public class EntradaSaida {

	public static Integer solicitarOpcao() {	
		String[] opcoes = {"Depositar", "Sacar", "Saldo da conta", "Dados da conta", 
				"Gerar extrato geral", "Gerar extrato dos dep�sitos", "Gerar extrato dos saques", "Sair"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(menu, menu, "Selecione a op��o que voc� deseja", 
				JOptionPane.OK_CANCEL_OPTION);
		return menu.getSelectedIndex();
	}

	public static void encerrarPrograma() {
		JOptionPane.showMessageDialog(null, "O seu programa ser� encerrado.", "Aviso", JOptionPane.INFORMATION_MESSAGE);
	}

	public static int tipoDaConta() {
		String[] opcao = {"Conta Corrente", "Conta Poupan�a"};
		JComboBox<String> menuTipo = new JComboBox<String>(opcao);
		JOptionPane.showConfirmDialog(menuTipo, menuTipo, "Qual tipo de conta voc� deseja criar?", JOptionPane.OK_CANCEL_OPTION);
		return menuTipo.getSelectedIndex();
	}

	public static void mostrarErroTitular(){
		JOptionPane.showMessageDialog(null, "Voc� informou um caractere desconhecido. \n"
				+ "Por favor, escreva novamente:", "Erro", JOptionPane.INFORMATION_MESSAGE);
	}

	public static double menuPoupanca() {
		String[] opcoes = {"Sim", "N�o"}; 
		JComboBox<String> menu = new JComboBox<String>(opcoes); 
		JOptionPane.showConfirmDialog(menu, menu, "Continuar ?", JOptionPane.OK_CANCEL_OPTION);
		return menu.getSelectedIndex();
	}

	public static void exibeInfoSaldo(String informacoes) {
		JOptionPane.showMessageDialog(null, informacoes, "Saldo total:", 
				JOptionPane.INFORMATION_MESSAGE);
	}

	public String conversaoDeIndex(int tipoConta) {

		if(tipoConta == 0) {
			return "Conta Corrente";
		}else{
			return "Conta Poupan�a";
		}

	}

	public static void exibeExtratoDeposito(String infoDeposito) {
		JOptionPane.showMessageDialog(null, infoDeposito, "Extrato dos dep�sitos:", 
				JOptionPane.INFORMATION_MESSAGE);
	}

	public static void exibeExtratoSaques(String infoSaque) {
		JOptionPane.showMessageDialog(null, infoSaque, "Extrato dos saques:", 
				JOptionPane.INFORMATION_MESSAGE);
	}

	public static int emprestimo() {	
		String[] opcoes = {"Sim", "N�o"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(menu, menu, "Prosseguir com o empr�stimo?", JOptionPane.OK_CANCEL_OPTION);
		return menu.getSelectedIndex();

	}

	public double realizarEmprestimo() {
		Double emprestar = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a quantidade que voc� seja para realizar o empr�stimo:", 
				"Emprestar", JOptionPane.INFORMATION_MESSAGE));
		return emprestar;
	}

	public double pedirDeposito() {
		double depositar = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a quantidade que voc� deseja depositar: ", 
				"Depositar", JOptionPane.INFORMATION_MESSAGE));
		return depositar;
	}

	public double pedirSaque() {
		double sacar = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a quantidade que voc� deseja sacar: ", 
				"Sacar", JOptionPane.INFORMATION_MESSAGE));
		return sacar;
	}

	public static int criarConta() {
		String[] opcao = {"Criar conta", "Sair"};
		JComboBox<String> menuConta = new JComboBox<String>(opcao);
		JOptionPane.showConfirmDialog(menuConta, menuConta, "Cria��o da conta", JOptionPane.OK_CANCEL_OPTION);
		return menuConta.getSelectedIndex();
	}

}