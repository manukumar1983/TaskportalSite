package taskcreation.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/add-todo.do")
public class addtodoServlet extends HttpServlet {
	
	private todoService todoList=new todoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		//request.setAttribute("todoitems",todoList.gettodoList());	
		
		request.getRequestDispatcher("/WEB-INF/views/add-todo.jsp").forward(request,response);
        }
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String todo = request.getParameter("todo");
		String category=request.getParameter("category");
		if ("".equals(todo)) {
			request.setAttribute("errorMessage", "Enter a valid todo");
			
			
		} else {
			todoList.addTodo(todo,category);
			
		}
		response.sendRedirect("list-todo.do");
		
	}


}
