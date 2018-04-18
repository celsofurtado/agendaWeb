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

	public Contato getContato() {
		return contato;
	}

	public void setContato(Contato contato) {
		this.contato = contato;
	}
	
	public ArrayList<Contato> getContatos(){
		ArrayList<Contato> contatos = new ArrayList<>();
		
		String sql = "SELECT * FROM contatos ORDER BY nome ASC";
		stm = null;
		
		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			rs = stm.executeQuery();
			
			while (rs.next()){
				contato = new Contato();
				contato.setId(rs.getInt("id"));
				contato.setNome(rs.getString("nome"));
				contato.setEmail(rs.getString("email"));
				contato.setTelefone(rs.getString("telefone"));
				contato.setCelular(rs.getString("celular"));
				contato.setEndereco(rs.getString("endereco"));
				contato.setDtNasc(rs.getString("dtNasc"));
				contato.setSexo(rs.getString("sexo"));
				contatos.add(contato);
			}
			
			Conexao.fecharConexao();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return contatos;
	}

}
