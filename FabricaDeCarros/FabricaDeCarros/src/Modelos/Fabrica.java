package Modelos;
import java.util.ArrayList;

public class Fabrica {

	Carro carros = new Carro();
	private ArrayList<Carro> carrosFabricados = new ArrayList<Carro>();

	public ArrayList<Carro> getCarrosFabricados(){
		return carrosFabricados;
	}

	public void fabricarCarros(Carro carro) {
		this.carrosFabricados.add(carro);
	}

	public void venderCarros(Carro carro) {
		this.carrosFabricados.remove(carro);
	}

	public String gerarCarro() {

		String informacoes = "Carros fábricados:\n";

		for(Carro infoCarros:this.carrosFabricados) {

			informacoes += "Cor: "+infoCarros.getCor()+"\n";
			informacoes += "Modelo: "+infoCarros.getModelo()+"\n";

		}
		return informacoes;
	}

}