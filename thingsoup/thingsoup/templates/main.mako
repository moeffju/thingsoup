<!DOCTYPE html>
<html>
	<head>
		<title>thingsoup</title>
		${h.stylesheet_link('/quick.css')}
		${h.stylesheet_link('/css/thingsoup_app.css')}
	<script src="js/jquery-1.3.2.min.js"></script>
	<script src="js/thing_focus.js"></script>
	</head>

	<body>
		<div class="header">
			<div class="column-left">
				<a href="/"><div class="logo"></div></a>
			</div>
			
			<div class="column-right">
				<a href="/users/login">login</a> |
				<a href="/things/new">new thing</a>
			</div>
		</div>
	
		<h1>${self.header()}</h1>
	
		${next.body()}\
	</body>
</html>