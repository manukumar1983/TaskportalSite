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
	<h1>Welcome ${name}</h1>
	
	<div class="container">
		Your New Action Item:
		<form method="POST" action="add-todo.do">
		<fieldset class="form-group">
	     Description : <input name="todo" type="text" class="form-control"/> <BR/>
	    </fieldset> 
	    <fieldset class="form-group">
	     Category :    <input name="category" type="text" class="form-control" /> <BR/>
	    </fieldset>
			
			
			<input name="add" type="submit" class="btn btn-success" value="Submit" />
		</form>
	</div>

	
	
<%@ include file="../common/footer.jspf"%>