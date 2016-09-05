package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ContactUs;
import dao.DataAccessObject;

/**
 * Servlet implementation class ContactUsServlet
 */
@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("here");
		String fname=request.getParameter("FirstName");
		String lname=request.getParameter("LastName");
		String area=request.getParameter("area");
		String num=request.getParameter("No");
		String phone=area+ " " +num;
		String email=request.getParameter("Email");
		String text=request.getParameter("FeedBack");
		
		ContactUs c=new ContactUs(fname,lname,phone,email,text);
		System.out.println(fname+lname+phone+email+text);
		DataAccessObject dao=new DataAccessObject();
		dao.ContactUs(c);
		
		
	}

}
