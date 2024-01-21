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
 * Servlet implementation class DeletePropertyOwner
 */
@WebServlet("/DeletePropertyOwnerServlet")
public class DeletePropertyOwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("pid");
		
		boolean isTrue;
		
		isTrue = PropertyOwnerDBUtil.deletePropertyOwner(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatch = request.getRequestDispatcher("OwnerRegistration.jsp");
			dispatch.forward(request, response);
			
		}else {
			
			List<PropertyOwner> ownerDetails = PropertyOwnerDBUtil.getPropertyOwnerDetails(id);
			request.setAttribute("ownerDetails", ownerDetails);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("PropertyOwnerAccount.jsp");
			dispatch.forward(request, response);
		}
		
	}

}
