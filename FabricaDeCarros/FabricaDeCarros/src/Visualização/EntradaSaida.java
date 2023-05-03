package Visualiza��o;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class EntradaSaida {

	public static int solicitaOpcao() {
		String[] opcoes = {"Fabricar carro", "Vender carro", 
				"Ver informa��es dos carros", "Sair do programa"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(menu, menu, "Selecione a op��o desejada",
				JOptionPane.OK_CANCEL_OPTION);
		return menu.getSelectedIndex();
	}

	public static void encerrarPrograma(){
		JOptionPane.showMessageDialog(null, "O programa ir� ser encerrado!", "Aviso", JOptionPane.INFORMATION_MESSAGE);
	}

	public static String opcaoCor() {
		return JOptionPane.showInputDialog(null, "Informe a cor do carro:", "Escolha a cor", JOptionPane.INFORMATION_MESSAGE);
	}

	public static String opcaoModelo() {
		return JOptionPane.showInputDialog(null, "Informe o modelo do carro:", "Escolha o modelo", JOptionPane.INFORMATION_MESSAGE);
	}

	public static void exibeInfoCarro(String informacoes) {
		JOptionPane.showMessageDialog(null, informacoes, "Informa��es dos carros:", 
				JOptionPane.INFORMATION_MESSAGE);
	}

	public static void mostrarErroOpcao() {

		JOptionPane.showMessageDialog(null, "Imposs�vel de prosseguir, o carro ainda n�o foi constru�do. "
				+ "Por favor, tente novamente.", "Erro de op��o", JOptionPane.INFORMATION_MESSAGE);	
	}

	public static void mostrarErroCor() {
		JOptionPane.showMessageDialog(null, "Voc� informou uma cor desconhecida. "
				+ "Por favor, tente novamente.", "Erro de cor", JOptionPane.INFORMATION_MESSAGE);
	}

	public static void mostrarErroQntCarro() {
		JOptionPane.showMessageDialog(null, "Voc� informou uma quantidade imposs�vel de ser f�bricada!. \n"
				+ "Por favor, informe uma quantidade certa.", "Erro", JOptionPane.INFORMATION_MESSAGE);
	}
}