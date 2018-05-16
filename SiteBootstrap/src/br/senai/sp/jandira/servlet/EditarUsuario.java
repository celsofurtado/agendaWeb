package br.senai.sp.jandira.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.senai.sp.jandira.dao.UsuarioDAO;
import br.senai.sp.jandira.model.Usuario;


@WebServlet("/EditarUsuario")
public class EditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditarUsuario() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pag = Integer.parseInt(request.getParameter("pag"));
		
		Usuario u = new Usuario();
		u.setId(Integer.parseInt(request.getParameter("txtIdUsuario")));
		u.setCidade(request.getParameter("txtCidade"));
		u.setDtNasc(request.getParameter("txtDtNasc"));
		u.setEmail(request.getParameter("txtEmail"));
		u.setNome(request.getParameter("txtNome"));
		u.setSenha(request.getParameter("txtSenha"));
		
		UsuarioDAO uDao = new UsuarioDAO();
		uDao.setUsuario(u);
		uDao.atualizar();
		
		HttpSession session = null;
		session = request.getSession(true);
		session.setAttribute("usuario", u);
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp?pag=1");
		rd.forward(request, response);
		
	}

}
