package Modelos;

public class Carro {

	public String cor;
	public String modelo;

	public String getCor(){
		return cor;	
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public void constroiCarro(String cor, String modelo) {
		setCor(cor);
		setModelo(modelo);
	}

}