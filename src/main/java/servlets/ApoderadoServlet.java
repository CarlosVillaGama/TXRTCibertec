package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.GestionApoderado;
import model.Apoderado;

/**
 * Servlet implementation class ApoderadoServlet
 */
@WebServlet(name = "ApoCrud", description = "mantenimiento de apoderado", urlPatterns = { "/AporadoCrud" })
public class ApoderadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApoderadoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion = request.getParameter("btnAction");
		
		switch (accion) {
		case "regApo": insert(request,response);
		case "actApo": update(request,response);
		case "eliApo": delete(request,response);
		case "lstApo": list(request,response);
		case "busApo": search(request,response);
		}
		
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//int cod = Integer.parseInt(request.getParameter("codApo"));
		String des = request.getParameter("desApo");
		String nom = request.getParameter("nomApo");
		String ape = request.getParameter("apeApo");
		int dni = Integer.parseInt(request.getParameter("dniApo"));
		int tel = Integer.parseInt(request.getParameter("telApo"));
		String dom = request.getParameter("domApo");
		
		Apoderado a = new Apoderado();
		
		//a.setCodApo(cod);
		a.setDesApo(des);
		a.setNomApo(nom);
		a.setApeApo(ape);
		a.setDniApo(dni);
		a.setTelApo(tel);
		a.setDomApo(dom);
		
		GestionApoderado ga = new GestionApoderado();
		
		int ok = ga.insertApoderado(a);
		
		if(ok ==0) {
			// mensaje de error
			request.setAttribute("alerta", "<div class='alert alert-danger' role='alert'>"
				+ "  Error al Registrar"
				+ "</div>");
		}else {
			request.setAttribute("alerta", "<div class='alert alert-success' role='alert'>"
					+ "  Producto Registrado"
					+ "</div>");
		}
		
		request.getRequestDispatcher("principal.jsp").forward(request, response);
		
		
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void list(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	
	private void search(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
