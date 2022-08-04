package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.GestionUsuario;
import model.Usuario;

/**
 * Servlet implementation class UsuarioServlet
 */
@WebServlet(name= "UsuCRUD", description= "Mantenedor de clase USUARIO", urlPatterns={"/UsuarioServlet"})
public class UsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion = request.getParameter("btnAction");
		
		System.out.println("Acción seleccionada: " + accion);
		
		// de acuerdo a lo que seleccione:
		
		switch (accion) {
		case "regUsr":
			insert(request,response);
			break;
		case "actUsr":
			update(request,response);
			break;
		case "eliUsr":
			delete(request,response);
			break;
		case "lstUsr":
			list(request,response);
			break;
		case "busUsr":
			search(request,response);
			break;
		case "carUsr":
			search(request,response);
			break;
		case "logUsr":
			search(request,response);
			break;
		default:
			break;
		}
		
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//int cod = Integer.parseInt(request.getParameter("codUsr"));
		String nom = request.getParameter("nomUsr");
		String pas = request.getParameter("pasUsr");
		int rol = Integer.parseInt(request.getParameter("rolUsr"));
		String cod = request.getParameter("codUsr");
		int est = Integer.parseInt(request.getParameter("estId"));
		
		Usuario u = new Usuario();
		
		//u.setcodUsu(cod);
		u.setnomUsu(nom);
		u.setpasUsu(pas);
		u.setrolUsu(rol);
		u.setcodEmp(cod);
		u.setestId(est);
		
		GestionUsuario gu = new GestionUsuario();
		
		int ok = gu.insertUsuario(u);
		
		if(ok ==0) {
			// mensaje de error
			request.setAttribute("alerta", "<div class='alert alert-danger' role='alert'>"
				+ "  Error al Registrar"
				+ "</div>");
		}else {
			request.setAttribute("alerta", "<div class='alert alert-success' role='alert'>"
					+ "  Usuario Registrado"
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

	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GestionUsuario gu = new GestionUsuario();
		ArrayList<Usuario> list = gu.listUsuario();
		
		// Enviar el listado a la pagina --> como atributo
		request.setAttribute("listUsuario", list);
		
		// redireccionar a la página donde se mostrara el listado		
		request.getRequestDispatcher("listUsuario.jsp").forward(request, response);
	}
		



	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. Lee cod del Usuario a buscar
		int codUsr = Integer.parseInt(request.getParameter("cod")) ;
		
		GestionUsuario gu = new GestionUsuario();
		Usuario u = gu.searchUsuario(codUsr);
		
		// Envia OBJ Usuario como atributo
		request.setAttribute("u", u);
		
		// Actualiza el listado para el combo
		GestionUsuario gEst = new GestionUsuario();
		ArrayList<Usuario> lstEstados = gEst.listUsuario(codUsr);
		request.setAttribute("lstEstados", lstEstados);
		
		// reenviar a la pagina
		request.getRequestDispatcher("registroUsuario.jsp").forward(request, response);
	}
		

    
	
}
