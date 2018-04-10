package br.senai.sp.jandira.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.senai.sp.jandira.jdbc.Conexao;
import br.senai.sp.jandira.model.Usuario;

public class AutenticaDAO {
	
	private Usuario usuario;
	
	public Usuario autentica(String email, String senha){
		
		this.usuario = null;
		
		PreparedStatement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM usuarios WHERE email = ? AND senha = ?";
		
		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, email);
			stm.setString(2, senha);
			rs = stm.executeQuery();
			
			if (rs.next()){
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
			}
			
			
			Conexao.fecharConexao();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
				
		return this.usuario;
		
	}
	
}
