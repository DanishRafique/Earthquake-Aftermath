package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import beans.SeekHelp;
import dao.DataAccessObject;

/**
 * Servlet implementation class SeekHelpServlet
 */
@WebServlet("/SeekHelpServlet")
@MultipartConfig(location="C:\\Users\\Obaiz123\\Desktop\\images",fileSizeThreshold=5*1024,maxFileSize=5*1024*1024,maxRequestSize=25*1024*1024)
public class SeekHelpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeekHelpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstN=request.getParameter("firstname");
		String lastN=request.getParameter("lastname");
		String city=request.getParameter("city");
		String coun=request.getParameter("country");
		Part p=request.getPart("image");
		
		String fn=request.getParameter("fn");
		String ln=request.getParameter("ln");
		String area=request.getParameter("area");
		String no=request.getParameter("telnum");
		String contact=area+ " "+no;
		SeekHelp s=new SeekHelp(firstN,lastN,city,coun,p,fn,ln,contact);
		DataAccessObject dao=new DataAccessObject();
		if(dao.insertSeekHelp(s)){
			
		}
		
		
	}

}
