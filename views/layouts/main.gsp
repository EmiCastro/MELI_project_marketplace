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
			<a href="${createLink(uri: '/') }"><img src="meli-logo.png" alt="Nuestro Logo" height=50px/></a>
			<div class="header-center col-md-6">

			<div class="container col-md-12">
				<form>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Busca el producto que deseas" name="search">
						<div class="input-group-btn text-center">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>



		</div>
			<div class="header-right d-flex flex-row-reverse">
				<nav>
					<ul>
						<li>
							<g:if test = "${session.usuario != null }"></g:if>
							<g:if test="${session.usuario == null }"> 				
								<li><a class="button red" href="${createLink(controller:'Usuario', action:'create') }">Regístrate</a></li>
								<a class="button red" href="/Meli/Login"><g:message code=""/>Ingresa</a>
								
							</g:if>
							<g:else>
								<span>Hola, ${session.usuario.email}</span>
								<a class ="button red" href="${createLink(controller:'Login', action:'logout')}">Salir</a></li>
								<li><a class="button red" href="${createLink(controller:'Publicacion', action:'create') }">Vende</a></li>
							</g:else>
						</li>
						<li><a href="">Info</a></li>							
					</ul>
				</nav>
			</div>
		</div>

		<g:layoutBody/>
	</body>
</html>
