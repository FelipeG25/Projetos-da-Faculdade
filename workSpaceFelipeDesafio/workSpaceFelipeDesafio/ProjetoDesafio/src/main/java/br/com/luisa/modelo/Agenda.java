package br.com.luisa.modelo;
import java.io.Serializable;

public class Agenda implements Serializable{

    private static final long serialVersionUID = 1L;

    private int id;
    private String telefone;
    private String whatsapp;
    private String data;
    private String hora;
    

    public int getId() {
    	return id;
    }
    
    public void setId(int id) {
    	this.id = id;
    }
    
    public String getTelefone(){
        return telefone;
    }
    public void setTelefone(String telefone){
        this.telefone = telefone;
    }
    
    public String getWhatsapp(){
        return whatsapp;
    }
    public void setWhatsapp(String whatsapp){
        this.whatsapp = whatsapp;
    }

    public String getData(){
        return data;
    }
    public void setData(String data){
        this.data = data;
    }

    public String getHora(){
        return hora;
    }
    public void setHora(String hora){
        this.hora = hora;
    }
}