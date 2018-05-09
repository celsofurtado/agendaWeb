package br.senai.sp.jandira.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.senai.sp.jandira.dao.ContatoDAO;
import br.senai.sp.jandira.model.Contato;


@WebServlet("/ListaContatos")
public class ListaContatos extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListaContatos() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContatoDAO dao = new ContatoDAO();
		ArrayList<Contato> contatos = new ArrayList<>();
		//contatos = dao.getContatos();
		request.setAttribute("contatos", contatos);
	}

}
