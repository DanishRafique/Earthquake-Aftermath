package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Client;
import dao.DataAccessObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String passw=request.getParameter("pwd");
		DataAccessObject dao=new DataAccessObject();
		Client c=dao.check(email,passw);
		if( c !=null){
			HttpSession session =request.getSession();
			session.setAttribute("user", c);
			RequestDispatcher rd=request.getRequestDispatcher("indexadmin.html");
			rd.forward(request, response);
			
		}else{
			response.sendRedirect("index.html");
		
		}
		
		
	}
	}


