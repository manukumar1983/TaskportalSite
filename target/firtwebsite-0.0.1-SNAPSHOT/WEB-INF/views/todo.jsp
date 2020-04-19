<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 30px;
		background-color: #f3f3f3;
	}
</style>

</head>

<body>
<nav class="navbar navbar-default">

		<!--<a href="/" class="navbar-brand">Brand</a> -->

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="todo.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="login.do">Logout</a></li>
		</ul>

	</nav>
	<h1>Welcome ${name}</h1>
	<div class="container">
		
<div>
<h3>Your Todo's are</h3>
<ol>
  <c:forEach items="${todoitems}" var="todo">
   <li>${todo.name} &nbsp; &nbsp; <a href="delete-todo.do?todo=${todo.name}">Delete</a></li>
</c:forEach>
</ol>
<form method="POST" action="add-todo.do">
New Todo : <input name="todo" type="text" /> <input name="add" type="submit" />
</form>



</div>

	</div>

	<footer class="footer">
		<p>Copy Rights reserved to Manu</p>
	</footer>

	
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>