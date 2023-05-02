package br.com.luisa.jdbcinterface;

import java.util.List;

import br.com.luisa.modelo.Agenda;

public interface AgendaDAO {

	public int inserir(Agenda agenda);
	public List<Agenda> armazenamentoBD();
	public boolean deletar(int id);
	public boolean alterar(Agenda agenda);
	public Agenda buscarPorId(int id);
	//public List<Agenda> buscar();
}