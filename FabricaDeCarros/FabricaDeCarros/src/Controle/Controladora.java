package Controle;
import javax.swing.JOptionPane;
import Modelos.*;
import Visualização.EntradaSaida;

public class Controladora {	

	Fabrica fabrica = new Fabrica();

	public void exibeMenu() {
		int opcao;
		do {
			opcao = EntradaSaida.solicitaOpcao();
			
			
			
			switch(opcao) {

			case 0:

				int carrosParaFabricar = Integer.parseInt(JOptionPane.showInputDialog(null, "Quantos carros você deseja fabricar?", 
						"Fabrica de carros", JOptionPane.INFORMATION_MESSAGE));
				while(carrosParaFabricar<=0) {
					EntradaSaida.mostrarErroQntCarro();
					carrosParaFabricar = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe uma quantidade correta "
							+ "para fábricar os carros:", 
							"Fabrica de carros", JOptionPane.INFORMATION_MESSAGE));
				}

				for(int i=0; i<carrosParaFabricar; i++) {
					Carro carro = new Carro();
					fabrica.fabricarCarros(carro);

					String cor = EntradaSaida.opcaoCor();

					while (cor.matches("^-?\\d*(\\.\\d+)?$")) {
						EntradaSaida.mostrarErroCor();
						cor = EntradaSaida.opcaoCor();
					}


					String modelo = EntradaSaida.opcaoModelo();

					carro.constroiCarro(cor, modelo);


					System.out.println("Cor do carro: "+carro.getCor()+"\n");
					System.out.println("Modelo do carro: "+carro.getModelo()+"\n");
				}
				break;

			case 1:

				if(fabrica.getCarrosFabricados().isEmpty() == true) {
					EntradaSaida.mostrarErroOpcao();
					break;
				}else{
					String retirarCor = JOptionPane.showInputDialog(null, "Informe a cor do carro que você deseja remover:", 
							"Remover cor", JOptionPane.INFORMATION_MESSAGE);

					String retirarModelo = JOptionPane.showInputDialog(null, "Informe o modelo do carro que você deseja remover:", 
							"Remover modelo", JOptionPane.INFORMATION_MESSAGE);

					Carro removerCarro = null;

					for(Carro retirarCarro : fabrica.getCarrosFabricados()) {

						if((retirarCarro.getCor().equals(retirarCor)) && (retirarCarro.getModelo().equals(retirarModelo))){
							removerCarro = retirarCarro;	
						}
					}
					fabrica.venderCarros(removerCarro);
					break;
				}

			case 2:

				if(fabrica.getCarrosFabricados().isEmpty() == true) {
					EntradaSaida.mostrarErroOpcao();
				}else {
					String informacoes = this.fabrica.gerarCarro();
					EntradaSaida.exibeInfoCarro(informacoes);
					break;
				}

			}


		}while(opcao!=3);

		EntradaSaida.encerrarPrograma();

		System.exit(0);

	}
}