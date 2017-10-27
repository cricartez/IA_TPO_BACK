


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.agencia;

/**
 * Servlet implementation class agencias
 */
@WebServlet("/agencias")
public class agencias extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final List<agencia> _agencias = new ArrayList<agencia>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public agencias() {
        super();
        agencia a = new agencia();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		RequestDispatcher rd = null;
		
		request.setAttribute("listAgencias", _agencias);
		if(accion != null && accion.equals("crear"))
		{
			rd = request.getRequestDispatcher("/views/agencias/create.jsp");
		}
		else
		{
			rd = request.getRequestDispatcher("/views/agencias/list.jsp");	
		}
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		agencia nuevaAgencia = new agencia();
		nuevaAgencia.direccion = request.getParameter("direccion");
		nuevaAgencia.nombre = request.getParameter("nombre");
		nuevaAgencia.estado = request.getParameter("estado");
		
		this._agencias.add(nuevaAgencia);
		response.sendRedirect("/OfertaPaquetesWebSite/agencias");
		
	}

}
