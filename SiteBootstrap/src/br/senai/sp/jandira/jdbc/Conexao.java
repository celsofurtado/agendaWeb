package br.senai.sp.jandira.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	private static Connection con;
	
	public static Connection getConexao(){
		con = null;
		
		try {
			//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			String dbURL = "jdbc:ucanaccess:////10.107.134.23/banco/agenda.accdb";
			con = DriverManager.getConnection(dbURL);
		} catch (SQLException e) {
			System.out.println("ERRO NA CONEXAO COM O BANCO...");
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			System.out.println("Classe não encontrada!");
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return con;
	}
	
	public static void fecharConexao(){
		if (con != null){
			try{
				con.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

}
