package br.senai.sp.jandira.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.senai.sp.jandira.dao.ContatoDAO;
import br.senai.sp.jandira.model.Contato;

@WebServlet("/EditarContato")
public class EditarContato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditarContato() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int pag = Integer.parseInt(request.getParameter("pag"));
		
		Contato c = new Contato();
		c.setId(Integer.parseInt(request.getParameter("txtId")));
		c.setNome(request.getParameter("txtNome"));
		c.setEmail(request.getParameter("txtEmail"));
		c.setDtNasc(request.getParameter("txtDtNasc"));
		c.setBairro(request.getParameter("txtBairro"));
		c.setCidade(request.getParameter("txtCidade"));
		c.setLogradouro(request.getParameter("txtLogradouro"));
		c.setCep(request.getParameter("txtCep"));
		c.setEstado(request.getParameter("cbEstado"));
		c.setTelefone(request.getParameter("txtTelefone"));
		c.setCelular(request.getParameter("txtCelular"));
		c.setSexo(request.getParameter("cbSexo"));

		ContatoDAO contatoDAO = new ContatoDAO();
		contatoDAO.setContato(c);
		
		contatoDAO.atualizar();
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp?pag=" + pag);
		rd.forward(request, response);
		
	}

}
