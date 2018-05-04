package br.senai.sp.jandira.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import br.senai.sp.jandira.jdbc.Conexao;
import br.senai.sp.jandira.model.Contato;

public class ContatoDAO {

	private Contato contato;
	PreparedStatement stm;
	ResultSet rs;

	public Contato getContato(int id) {

		String sql = "SELECT * FROM contatos WHERE id = ?";

		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setInt(1, id);
			rs = stm.executeQuery();

			while (rs.next()) {
				contato = new Contato();
				contato.setId(rs.getInt("id"));
				contato.setNome(rs.getString("nome"));
				contato.setEmail(rs.getString("email"));
				contato.setTelefone(rs.getString("telefone"));
				contato.setCelular(rs.getString("celular"));
				contato.setLogradouro(rs.getString("logradouro"));
				contato.setBairro(rs.getString("bairro"));
				contato.setCidade(rs.getString("cidade"));
				contato.setCep(rs.getString("cep"));
				contato.setEstado(rs.getString("estado"));
				contato.setDtNasc(rs.getString("dtNasc"));
				contato.setSexo(rs.getString("sexo"));
			}

			Conexao.fecharConexao();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}

		return contato;
	}

	public void setContato(Contato contato) {
		this.contato = contato;
	}

	public ArrayList<Contato> getContatos() {
		ArrayList<Contato> contatos = new ArrayList<>();

		String sql = "SELECT * FROM contatos ORDER BY nome ASC";
		stm = null;

		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			rs = stm.executeQuery();

			while (rs.next()) {
				contato = new Contato();
				contato.setId(rs.getInt("id"));
				contato.setNome(rs.getString("nome"));
				contato.setEmail(rs.getString("email"));
				contato.setTelefone(rs.getString("telefone"));
				contato.setCelular(rs.getString("celular"));
				contato.setLogradouro(rs.getString("logradouro"));
				contato.setBairro(rs.getString("bairro"));
				contato.setCidade(rs.getString("cidade"));
				contato.setCep(rs.getString("cep"));
				contato.setEstado(rs.getString("estado"));
				contato.setDtNasc(rs.getString("dtNasc"));
				contato.setSexo(rs.getString("sexo"));
				contatos.add(contato);
			}

			Conexao.fecharConexao();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return contatos;
	}

	public void gravar() {

		String sql = "INSERT INTO contatos (nome, dtNasc, email, " + "logradouro, bairro, cidade, "
				+ "estado, cep, telefone, " + "celular, sexo) " + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, contato.getNome());
			stm.setString(2, contato.getDtNasc());
			stm.setString(3, contato.getEmail());
			stm.setString(4, contato.getLogradouro());
			stm.setString(5, contato.getBairro());
			stm.setString(6, contato.getCidade());
			stm.setString(7, contato.getEstado());
			stm.setString(8, contato.getCep());
			stm.setString(9, contato.getTelefone());
			stm.setString(10, contato.getCelular());
			stm.setString(11, contato.getSexo());
			System.out.println("Gravandoooooo...");
			stm.execute();

			Conexao.fecharConexao();

		} catch (Exception erroBanco) {
			System.out.println(erroBanco.getMessage());
			erroBanco.printStackTrace();
		}
	}

	public void atualizar() {

		String sql = "UPDATE contatos SET nome = ?, dtNasc = ?, email = ?, " 
				+ "logradouro = ?, bairro = ?, cidade = ?, "
				+ "estado = ?, cep = ?, telefone = ?, " 
				+ "celular = ?, sexo = ? WHERE id = ?";

		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, contato.getNome());
			stm.setString(2, contato.getDtNasc());
			stm.setString(3, contato.getEmail());
			stm.setString(4, contato.getLogradouro());
			stm.setString(5, contato.getBairro());
			stm.setString(6, contato.getCidade());
			stm.setString(7, contato.getEstado());
			stm.setString(8, contato.getCep());
			stm.setString(9, contato.getTelefone());
			stm.setString(10, contato.getCelular());
			stm.setString(11, contato.getSexo());
			stm.setInt(12, contato.getId());
			System.out.println("Atualizandoooo...");
			stm.execute();

			Conexao.fecharConexao();

		} catch (Exception erroBanco) {
			System.out.println(erroBanco.getMessage());
			erroBanco.printStackTrace();
		}
	}

}
