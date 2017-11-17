

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Compra Realizada con Exito</h1>
		<a href="http://localhost:8090/Meli/">Seguir comprando</a>
		<a href="http://localhost:8090/Meli/verCompras/verCompras">Ver compras realizadas</a>
	</body>
</html>
