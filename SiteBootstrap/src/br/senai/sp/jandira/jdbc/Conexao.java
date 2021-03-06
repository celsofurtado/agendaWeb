package br.senai.sp.jandira.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	private static Connection con;
	
	public static Connection getConexao(){
		con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			//String dbURL = "jdbc:ucanaccess:////10.107.134.23/banco/agenda.accdb";
			//String dbURL = "jdbc:ucanaccess://Z:/PARTICULAR/sn1006137/JavaProjects/agendaWeb/SiteBootstrap/agenda.accdb";
			String dbURL = "jdbc:mysql://10.107.134.3:3306/agenda?useSSL=false";
			con = DriverManager.getConnection(dbURL, "root", "bcd127");
		} catch (SQLException e) {
			System.out.println("ERRO NA CONEXAO COM O BANCO...");
			System.out.println(e.getMessage());
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("Classe n�o encontrada!");
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
