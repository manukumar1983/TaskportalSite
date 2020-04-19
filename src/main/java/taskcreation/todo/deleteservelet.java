package taskcreation.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete-todo.do")
public class deleteservelet extends HttpServlet {
	
	private todoService todoService=new todoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		todoService.delteTodo(request.getParameter("todo"),request.getParameter("category"));	
		response.sendRedirect("list-todo.do");
		
		
        }
	
	}
	
	
	

