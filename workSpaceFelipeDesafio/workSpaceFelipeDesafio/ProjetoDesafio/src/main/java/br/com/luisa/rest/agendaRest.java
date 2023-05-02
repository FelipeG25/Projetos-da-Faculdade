package br.com.luisa.rest;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.google.gson.Gson;

import br.com.luisa.bd.Conexao;
import br.com.luisa.modelo.Agenda;
import br.com.luisa.jdbc.JDBCAgendaDAO;

@Path("agenda")
public class agendaRest extends utilRest {

	@POST
	@Path("/inserir")
	@Consumes("application/*")
	public Response inserir(String agendaParam) {

		try {
			Agenda agenda = new Gson().fromJson(agendaParam, Agenda.class);
			Conexao conec = new Conexao();
			Connection conexao = conec.abrirConexao();

			JDBCAgendaDAO jdbcAgenda = new JDBCAgendaDAO(conexao);
			int retorno = jdbcAgenda.inserir(agenda);
			String msg = "";

			if (retorno == 1) {
				msg = "Horário agendado !";
			} else if (retorno == 2) {
				msg = "Erro ao agendar o horário.";
			}

			conec.fecharConexao();

			return this.buildResponse(msg);
		} catch (Exception e) {
			e.printStackTrace();
			return this.buildErrorResponse(e.getMessage());
		}
	}

	@GET
	@Path("/armazenar")
	@Produces(MediaType.APPLICATION_JSON)

	public Response armazenamentoBD() {

		try {
			List<Agenda> listArmazenamento = new ArrayList<Agenda>();

			Conexao conec = new Conexao();
			Connection conexao = conec.abrirConexao();
			JDBCAgendaDAO jdbcAgendamento = new JDBCAgendaDAO(conexao);
			listArmazenamento = jdbcAgendamento.armazenamentoBD();
			conec.fecharConexao();
			return this.buildResponse(listArmazenamento);
		} catch (Exception g) {
			g.printStackTrace();
			return this.buildErrorResponse(g.getMessage());
		}

	}

	@DELETE
	@Path("/excluir/{id}")
	@Consumes("application/*")
	public Response excluir(@PathParam("id") int id) {
		try {
			Conexao conec = new Conexao();
			Connection conexao = conec.abrirConexao();
			JDBCAgendaDAO jdbcAgenda = new JDBCAgendaDAO(conexao);

			boolean retorno = jdbcAgenda.deletar(id);

			String msg = "";
			if (retorno) {
				msg = "Agendamento excluído com sucesso!";
			} else {
				msg = "Erro ao excluir o agendamento.";
			}

			conec.fecharConexao();

			return this.buildResponse(msg);

		} catch (Exception e) {
			e.printStackTrace();
			return this.buildErrorResponse(e.getMessage());
		}
	}

	@PUT
	@Path("/alterar")
	@Consumes("application/*")
	public Response alterar(String agendaParam) {

		try {
			Agenda agenda = new Gson().fromJson(agendaParam, Agenda.class);
			Conexao conec = new Conexao();
			Connection conexao = conec.abrirConexao();
			JDBCAgendaDAO jdbcAgenda = new JDBCAgendaDAO(conexao);

			boolean retorno = jdbcAgenda.alterar(agenda);

			String msg = "";
			if (retorno) {
				msg = "Seu horário escolhido foi alterado com sucesso!";
			} else {
				msg = "Erro ao alterar o horário escolhido";
			}

			conec.fecharConexao();
			return this.buildResponse(msg);

		} catch (Exception e) {
			e.printStackTrace();
			return this.buildErrorResponse(e.getMessage());
		}
	}

	@GET
	@Path("/buscarPorId")
	@Consumes("application/*")
	@Produces(MediaType.APPLICATION_JSON)
	public Response buscarPorId(@QueryParam("id") int id) {
		try {
			Agenda agenda = new Agenda();
			Conexao conec = new Conexao();
			Connection conexao = conec.abrirConexao();
			JDBCAgendaDAO jdbcAgenda = new JDBCAgendaDAO(conexao);
			
			agenda = jdbcAgenda.buscarPorId(id);
			
			conec.fecharConexao();
			
			return this.buildResponse(agenda);
			
		}catch(Exception e) {
			e.printStackTrace();
			return this.buildErrorResponse(e.getMessage());
		}
	}
	
	
	
//	public Response buscar() {
//		List<Agenda> listaAgenda = new ArrayList<Agenda>();
//		
//		Conexao conec = new Conexao();
//		Connection conexao = conec.abrirConexao();
//		JDBCAgendaDAO jdbcAgenda = new JDBCAgendaDAO(conexao);
//		listaAgenda = jdbcAgenda.buscar();
//		conec.fecharConexao();
//		
//	}
	
}