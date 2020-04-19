<%@ include file="../common/header.jspf"%>



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

<%@ include file="../common/footer.jspf"%>
