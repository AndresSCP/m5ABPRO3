package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
	 String username = "";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rutConDV = request.getParameter("inputUsuario");
		String[] partes = rutConDV.split("-");		
		int userRun = Integer.parseInt(partes[0]);
        String password = request.getParameter("password");
        
        boolean validCredentials = validateCredentials(userRun, password);

        if (validCredentials) {            
        	HttpSession session = request.getSession();
        	session.setAttribute("username", username);
            // Crear una cookie de sesión con un tiempo de vida de 30 minutos
            Cookie cookie = new Cookie("JSESSIONID", session.getId());
            cookie.setMaxAge(1800);
            response.addCookie(cookie);

            response.sendRedirect("ContactoServletJSP");
        } else {
            request.setAttribute("mensajeError", "Credenciales inválidas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        response.sendRedirect("login.jsp");

    }

    private boolean validateCredentials(int userRun, String password) {
        Object[][] usuarios = {
                {15763620, "1234","david"},
                {11111111, "1234", "andres"},
                {22222222, "1234", "matias"},
                {33333333, "1234", "jose"}
            };
            
            for (Object[] usuario : usuarios) {
            	int usuarioRun = (int) usuario[0];
                String usuarioPassword = (String) usuario[1];
                if (usuarioRun==userRun && usuarioPassword.equals(password)) {
                	
                	username = (String) usuario[2];
                    
                    return true;
                }
            }
            
            return false;
    }
}
