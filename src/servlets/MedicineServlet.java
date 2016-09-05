package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Medicine;
import dao.DataAccessObject;

/**
 * Servlet implementation class MedicineServlet
 */
@WebServlet("/MedicineServlet")
public class MedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicineServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String region=request.getParameter("region");
			String pain=request.getParameter("pain");
			String anti=request.getParameter("anti");
			String band=request.getParameter("bandage");
			String other=request.getParameter("other");
			Medicine m=new Medicine(region,pain,anti,band,other);
			DataAccessObject dao=new DataAccessObject();
			dao.insertMedicine(m);
			
			
	}

}
