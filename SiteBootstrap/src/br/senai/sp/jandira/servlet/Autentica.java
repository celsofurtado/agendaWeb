package br.senai.sp.jandira.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.senai.sp.jandira.dao.AutenticaDAO;
import br.senai.sp.jandira.model.Usuario;

@WebServlet("/Autentica")
public class Autentica extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Autentica() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("txtUserName");
		String senha = request.getParameter("txtPassword");

		HttpSession session = null;

		AutenticaDAO autentica = new AutenticaDAO();

		Usuario usuario = new Usuario();

		usuario = autentica.autentica(email, senha);

		if (usuario != null) {
			session = request.getSession(true);
			session.setAttribute("usuario", usuario);
		}

		RequestDispatcher rd = request.getRequestDispatcher("index.jsp?pag=1");
		rd.forward(request, response);

	}

}
