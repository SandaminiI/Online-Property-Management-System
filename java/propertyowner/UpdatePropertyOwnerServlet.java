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
 * Servlet implementation class UpdatePropertyOwnerServlet
 */
@WebServlet("/UpdatePropertyOwnerServlet")
public class UpdatePropertyOwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("pid");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String username = request.getParameter("puname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = PropertyOwnerDBUtil.updatePropertyOwner(id, name, nic, email, phone, address, username, password);
		
		if(isTrue == true) {
			
			List<PropertyOwner> ownerDetails = PropertyOwnerDBUtil.getPropertyOwnerDetails(id);
			request.setAttribute("ownerDetails", ownerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PropertyOwnerAccount.jsp");
			dis.forward(request, response);
			
		}else {
			
			List<PropertyOwner> ownerDetails = PropertyOwnerDBUtil.getPropertyOwnerDetails(id);
			request.setAttribute("ownerDetails", ownerDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("PropertyOwnerAccount.jsp");
			dis2.forward(request, response);
		}
	}

}
