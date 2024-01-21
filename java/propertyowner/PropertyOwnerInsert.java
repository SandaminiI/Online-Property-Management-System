package propertyowner;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PropertyOwnerInsert
 */
@WebServlet("/PropertyOwnerInsert")
public class PropertyOwnerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String repwd = request.getParameter("repwd");
		
		boolean isTrue;
		
		isTrue = PropertyOwnerDBUtil.insertPropertyOwner(name, nic, dob, email, mobile, gender, address, uname, pwd, repwd);
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("OwnerLogin.jsp");
			dis.forward(request, response);
		
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("OwnerRegistration.jsp");
			dis2.forward(request, response);
		
		}
		
	}

}
