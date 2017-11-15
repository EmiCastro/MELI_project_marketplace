<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<r:require modules="bootstrap"/>
		<g:layoutHead/>
	</head>
	<body>
		<nav class="navbar navbar-default">
			<div class="col-md-1 col-xs-1">
			
			</div>
			<div class="col-md-7 col-sm-7">
				<h3>Amazon</h3>
			</div>
			<div class="col-md-4 col-xs-4 text-center bottom-align-text">
				<g:if test = "${session.usuario != null }">
					
				</g:if>
				<g:if test="${session.usuario == null }"> 				
					<a class="btn btn-default" href="Usuario"><g:message code="Login"/></a>
				</g:if>
				<g:else>
					<span>Hola, ${session.usuario}</span>
					<a href="${createLink(controller:'Usuario', action:'logout')}"> Logout</a></li>
				</g:else>
			</div>
		</nav>
		<div class="col-md-2 col-xs-3 list-group">			
			<a class = 'list-group-item'href="#"> Buscar publicaciones</a></li>
		</div>
		<g:layoutBody/>
	</body>
</html>