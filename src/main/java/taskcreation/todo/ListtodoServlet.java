package taskcreation.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/list-todo.do")
public class ListtodoServlet extends HttpServlet {
	
	private todoService todoList=new todoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		request.setAttribute("todoitems",todoList.gettodoList());	
		
		request.getRequestDispatcher("/WEB-INF/views/list-todo.jsp").forward(request,response);
        }
	
	
	
	

}
