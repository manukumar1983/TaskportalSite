package taskcreation.todo;

import java.util.ArrayList;
import java.util.List;

public class todoService {
	
	private static List<todoList> toDoalist=new ArrayList<>();
     static {
    	 toDoalist.add(new todoList("Selenium","Automation"));
    	 toDoalist.add(new todoList("Cypress","Automation"));
    	 toDoalist.add(new todoList("UIPath","Automation"));
    	 
     }
     
     
     
     public List<todoList> gettodoList(){
    	 return toDoalist;
     }
     
     public void addTodo(String toDo,String category) {
    	 toDoalist.add(new todoList(toDo,category));
     }
     
     public void delteTodo(String toDo, String category) {
    	 toDoalist.remove(new todoList(toDo,category));
     }

}
