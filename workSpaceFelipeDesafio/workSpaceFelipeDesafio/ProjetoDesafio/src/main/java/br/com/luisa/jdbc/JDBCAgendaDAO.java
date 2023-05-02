package br.com.luisa.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.luisa.jdbcinterface.AgendaDAO;
import br.com.luisa.modelo.Agenda;

public class JDBCAgendaDAO implements AgendaDAO {

	private Connection conexao;

	public JDBCAgendaDAO(Connection conexao) {
		this.conexao = conexao;
	}

	public int inserir(Agenda agenda) {
		String comando = "INSERT INTO agenda" + "(idAgenda, telefone, whats, dataEscolhida,hora)"
				+ "VALUES (?,?,?,?,?)";
		int retorno = 0;
		PreparedStatement p;

		try {
			p = this.conexao.prepareStatement(comando);

			p.setInt(1, agenda.getId());
			p.setString(2, agenda.getTelefone());
			p.setString(3, agenda.getWhatsapp());
			p.setString(4, agenda.getData());
			p.setString(5, agenda.getHora());

			p.execute();
			retorno = 1;
		} catch (SQLException e) {
			e.printStackTrace();
			retorno = 2;
		}
		return retorno;
	}

	public List<Agenda> armazenamentoBD() {
		String comando = "SELECT * FROM agenda";

		List<Agenda> agendaArmazenamento = new ArrayList<Agenda>();

		try {

			Statement stmt = conexao.createStatement();
			ResultSet rs = stmt.executeQuery(comando);

			while (rs.next()) {

				Agenda agenda = new Agenda();

				agenda.setId(rs.getInt("idAgenda"));
				agenda.setTelefone(rs.getString("telefone"));
				agenda.setWhatsapp(rs.getString("whats"));
				agenda.setData(rs.getString("dataEscolhida"));
				agenda.setHora(rs.getString("hora"));

				agendaArmazenamento.add(agenda);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return agendaArmazenamento;

	}

	public boolean deletar(int id) {
		String comando = "DELETE FROM agenda WHERE idAgenda = ?";
		PreparedStatement p;
		try {
			p = this.conexao.prepareStatement(comando);
			p.setInt(1, id);
			p.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean alterar(Agenda agenda) {

		String comando = "UPDATE agenda"
				+ " SET telefone=?, whats=?, dataEscolhida=?, hora=?"
				+ " WHERE idAgenda=?";
		PreparedStatement p;

		try {
			p = this.conexao.prepareStatement(comando);
			p.setString(1, agenda.getTelefone());
			p.setString(2, agenda.getWhatsapp());
			p.setString(3, agenda.getData());
			p.setString(4, agenda.getHora());
			p.setInt(5, agenda.getId());
			
			p.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public Agenda buscarPorId(int id) {
		String comando = "SELECT * FROM agenda WHERE agenda.idAgenda = ?";
		Agenda agenda = new Agenda();
		try {
			PreparedStatement p = this.conexao.prepareStatement(comando);
			p.setInt(1, id);
			ResultSet rs = p.executeQuery();
			while (rs.next()) {
				
				int idEdita = rs.getInt("idAgenda");
				String  telefone = rs.getString("telefone");
				String whatsapp = rs.getString("whats");
				String data = rs.getString("dataEscolhida");
				String hora = rs.getString("hora");
				
				agenda.setId(idEdita);
				agenda.setTelefone(telefone);
				agenda.setWhatsapp(whatsapp);
				agenda.setData(data);
				agenda.setHora(hora);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return agenda;
	}
	
//	public List<Agenda> buscar(){
//		String comando = "SELECT * FROM agenda";
//		List<Agenda> listAgenda = new ArrayList<Agenda>();
//		Agenda agenda = null;
//		
//		try {
//			Statement stmt = conexao.createStatement();
//			ResultSet rs = stmt.executeQuery(comando);
//			
//			while(rs.next()) {
//				agenda = new Agenda();
//				int id = rs.getInt("idAgenda");
//				String telefone = rs.getString("telefone");
//				String whatsapp = rs.getString("whats");
//				String data = rs.getString("dataEscolhida");
//				String hora = rs.getString("hora");
//				
//				agenda.setId(id);
//				agenda.setTelefone(telefone);
//				agenda.setWhatsapp(whatsapp);
//				agenda.setData(data);
//				agenda.setHora(hora);
//				
//				listAgenda.add(agenda);
//			}
//			
//		}catch(Exception ex) {
//			
//		}
//		
//		return listAgenda;
//	}
	
}