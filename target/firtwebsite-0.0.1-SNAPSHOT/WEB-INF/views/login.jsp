<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
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
			<li><a href="list-todo.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

</nav>
<form action="login.do" method="post">
    <p><font color="red">${Invalid}</font>
    Enter you name <input type="text" name="Username" /input>
    Enter you Password <input type="text" name="Password" /input>    
    <input type="submit" value="Login" /input>
    
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