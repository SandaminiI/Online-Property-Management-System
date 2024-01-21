package application;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ApplicationInsert
 */
@WebServlet("/ApplicationInsert")
public class ApplicationInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String paddress = request.getParameter("paddress");
		String dates = request.getParameter("dates");
		String pmobile = request.getParameter("pmobile");
		String company = request.getParameter("company");
		String job = request.getParameter("job");
		String sal = request.getParameter("sal");
		String file = request.getParameter("file");
		String rname = request.getParameter("rname");
		String rmobile = request.getParameter("rmobile");
		String additional = request.getParameter("additional");
		
		boolean isTrue;
		
		isTrue = ApplicationDBUtil.insertApplication(name, nic, dob, email, address, mobile, paddress, dates, pmobile, company, job, sal, file, rname, rmobile, additional);
		
		if (isTrue == true) {
			
			List<ApplicationDetails> appdetails = ApplicationDBUtil.getappdetails(name);
			request.setAttribute("appdetails", appdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ApplicationDetails.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("Application.jsp");
			dis2.forward(request, response);
			
		}
		
			
	}

}
