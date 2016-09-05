package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Acc;
import dao.DataAccessObject;

/**
 * Servlet implementation class AccessoriesServlet
 */
@WebServlet("/AccessoriesServlet")
public class AccessoriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccessoriesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String region=request.getParameter("region");
		String clothes=request.getParameter("clothes");
		String blanket=request.getParameter("blanket");
		String tent=request.getParameter("tent");
		String other=request.getParameter("other");
		Acc a=new Acc(region,clothes,blanket,tent,other);
		DataAccessObject dao=new DataAccessObject();
		dao.insertAcc(a);
	}

}
