package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Food;
import dao.DataAccessObject;

/**
 * Servlet implementation class FoodServlet
 */
@WebServlet("/FoodServlet")
public class FoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String region=request.getParameter("region");
		String rice=request.getParameter("rice");
		String wheat=request.getParameter("wheat");
		String water=request.getParameter("water");
		String other=request.getParameter("other");
		Food f=new Food(region,rice,wheat,water,other);
		DataAccessObject dao=new DataAccessObject();
		dao.insertFood(f);
	}

}
