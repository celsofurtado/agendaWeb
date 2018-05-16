package br.senai.sp.jandira.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.senai.sp.jandira.dao.UsuarioDAO;
import br.senai.sp.jandira.model.Usuario;

@WebServlet("/GravarUsuario")
public class GravarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public GravarUsuario() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario u = new Usuario();
		
		u.setNome(request.getParameter("txtNome"));
		u.setEmail(request.getParameter("txtEmail"));
		u.setDtNasc(request.getParameter("txtDtNasc"));
		u.setSenha(request.getParameter("txtSenha"));
		u.setCidade(request.getParameter("txtCidade"));
		
		UsuarioDAO uDao = new UsuarioDAO();
		uDao.setUsuario(u);
		uDao.gravar();
		
		RequestDispatcher rd = request.getRequestDispatcher("confirma_cadastro.jsp");
		rd.forward(request, response);
		
	}

}
