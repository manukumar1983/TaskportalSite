<%@ include file="../common/header.jspf"%>




<nav class="navbar navbar-default">

		<!--<a href="/" class="navbar-brand">Brand</a> -->

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="list-todo.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="logout.do">Logout</a></li>
		</ul>

	</nav>
	
	<div class="container">
		<h1>Welcome ${name}</h1>


<table class="table table-striped">
		<caption>Your Todos are</caption>
		<thead>
			<th>Description</th>
			<th>Category</th>
			<th>Actions</th>
		</thead>
		<tbody>
			<c:forEach items="${todoitems}" var="todo">
				<tr>
					<td>${todo.name}</td>
					<td>${todo.category}</td>
					<td>&nbsp;&nbsp;<a class="btn btn-danger"
						href="delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


      
    
    <a class="btn btn-success"  href="add-todo.do">Add new ToDos</a>
</div>

<%@ include file="../common/footer.jspf"%>
	

