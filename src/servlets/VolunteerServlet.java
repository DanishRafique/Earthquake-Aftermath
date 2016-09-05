package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Volunteer;
import dao.DataAccessObject;

/**
 * Servlet implementation class VolunteerServlet
 */
@WebServlet("/VolunteerServlet")
public class VolunteerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VolunteerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String city=request.getParameter("city");
		String country=request.getParameter("country");
		String area=request.getParameter("area");
		String num=request.getParameter("num");
		//String phone=area+" "+num;
		String email=request.getParameter("emailid");
		System.out.println(fname+lname+city+country+area+num+email);

		Volunteer v = new Volunteer(email, email, email, email, null, null, email)
		DataAccessObject dao=new DataAccessObject();
		if(dao.insertVolunteer(v)){
			
		}
		
		
	}

}
