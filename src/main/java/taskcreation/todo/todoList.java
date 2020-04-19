package taskcreation.todo;

public class todoList {
	
	private  String name;
    private String category;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
		
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public todoList(String name,String category) {
		super();
		this.name = name;
		this.category=category;
	}
	
  @Override
public String toString() {
	return "todoList [name=" + name + ", category=" + category + "]";
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((name == null) ? 0 : name.hashCode());
	return result;
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	todoList other = (todoList) obj;
	if (name == null) {
		if (other.name != null)
			return false;
	} else if (!name.equals(other.name))
		return false;
	return true;
	
      
}
  
  
}
