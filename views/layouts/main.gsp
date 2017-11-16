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
		<div class="header">
			<a href="#"><img src="meli-logo.png" alt="Nuestro Logo" height=50px/></a>
			<div class="header-right d-flex flex-row-reverse">
				<nav>
					<ul>
						<li>
							<g:if test = "${session.usuario != null }"></g:if>
							<g:if test="${session.usuario == null }"> 				
								<li><a class="button red" href="${createLink(controller:'Usuario', action:'create') }">Regístrate</a></li>
								<a class="button red" href="/Meli/Usuario"><g:message code=""/>Ingresa</a>
							</g:if>
							<g:else>
							<span>Hola, ${session.usuario}</span>
							<a href="${createLink(controller:'Usuario', action:'logout')}"> Logout</a></li>
							</g:else>
						</li>
						<li><a href="">Info</a></li>
						<li><a href="#">Vende</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<nav class="navbar navbar-default">

		</nav>
		<div class="col-md-2 col-xs-3 list-group">			
			<a class = 'list-group-item'href="${createLink(controller:'BuscarPublicacion', action:'buscarPorTitulo')}"> Buscar publicaciones</a></li>
		</div>
		<g:layoutBody/>
	</body>
</html>
