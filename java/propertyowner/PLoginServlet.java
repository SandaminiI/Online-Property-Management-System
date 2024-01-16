package propertyowner;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PLoginServlet
 */
@WebServlet("/PLoginServlet")
public class PLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		
		try {
			
		     List<PropertyOwner> ownerDetails = PropertyOwnerDBUtil.validate(username, password);
		     request.setAttribute("ownerDetails", ownerDetails);
		
		}catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("PropertyOwnerAccount.jsp");
		dis.forward(request, response);
		
	}

}
