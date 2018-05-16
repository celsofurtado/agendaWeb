package br.senai.sp.jandira.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import br.senai.sp.jandira.jdbc.Conexao;
import br.senai.sp.jandira.model.Usuario;

public class UsuarioDAO {
	
	Usuario usuario = new Usuario();
	
	PreparedStatement stm;
	ResultSet rs;

	
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public void gravar(){
		String sql = "INSERT INTO usuarios (nome, email, senha, cidade, dtNasc) "
				+ "VALUES (?, ?, ?, ?, ?)";
		
		stm = null;
		
		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, usuario.getNome());
			stm.setString(2, usuario.getEmail());
			stm.setString(3, usuario.getSenha());
			stm.setString(4, usuario.getCidade());
			stm.setString(5, usuario.getDtNasc());
			stm.execute();

			Conexao.fecharConexao();
			
		} catch (SQLException erro){
			erro.printStackTrace();
		}
		
	}
	
	public void atualizar(){
		
		String sql = "UPDATE usuarios SET nome = ?, "
				+ "email = ?, "
				+ "cidade = ?, "
				+ "dtNasc = ?, "
				+ "senha = ? "
				+ "WHERE id = ?";
		
		stm = null;
		
		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, usuario.getNome());
			stm.setString(2, usuario.getEmail());
			stm.setString(3, usuario.getCidade());
			stm.setString(4, usuario.getDtNasc());
			stm.setString(5, usuario.getSenha());
			stm.setInt(6, usuario.getId());
			
			stm.execute();

			Conexao.fecharConexao();
			
		} catch (SQLException erro){
			erro.printStackTrace();
		}
		
	}


	public Usuario getUsuario(int id){
		Usuario u = new Usuario();
		
		String sql = "SELECT * FROM usuarios WHERE id = ?";
		
		stm = null;
		rs = null;
		
		try {
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setInt(1, id);
			rs = stm.executeQuery();
			
			if (rs.next()){
				u.setId(rs.getInt("id"));
			}
		} catch (SQLException erro){
			erro.printStackTrace();
		}
		
		return u;
	}
	
}
