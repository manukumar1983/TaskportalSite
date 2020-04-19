package taskcreation.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import taskcreation.todo.todoService;

@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet {
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);
		
        }
	
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 LoginService validations=new LoginService();
		 todoService todoList=new todoService();		 
		
		String name=request.getParameter("Username");
		String password=request.getParameter("Password");
		 boolean valueT=validations.validateUser(name,password);
         
         if(valueT) {
        	 request.getSession().setAttribute("name",name);
        	 response.sendRedirect("add-todo.do");  
        	 
        	 
         }else {
        	 
        	 request.setAttribute("Invalid","Please enter Valid credentials");
        	 request.getRequestDispatcher("/WEB-INF/views/Error.jsp").forward(request,response);
         }
		
		
        }
}
