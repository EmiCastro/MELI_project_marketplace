

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>${flash.message}</h1><%--
		<g:form url="[controller:BuscarPublicacion, action:'buscarPorTitulo']" >
			<fieldset class="form">
				<div >
					<g:textField name="titulo" required="true"/>
				</div>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save" value="Buscar" />
			</fieldset>
		</g:form>
		--%>
		<div class="col-md-2">
			<g:form url="[controller:BuscarPublicacion, action:'filtrarPorUso']" params="${[publicaciones:publicaciones]}">
				<input name="titulo" class="flexsearch-input" type="search" value="${params.titulo }">
				<div class="col-sm-4">
					<h5>Nuevo?</h5>
					<g:checkBox name="nuevo"/>
				</div>
				<div class="col-sm-2">	
					<g:submitButton name="filter" value="Filtrar" />
				</div>
			</g:form>
		</div>
		<div class="col-md-10">
			<h1>Coincidencias: ${publicaciones.size() }</h1>
			<table>
				<thead>
					<tr>					
						<td>Titulo</td>
						<td>Descripcion</td>
						<td>Fecha de Creacion</td>
						<td>Fecha de Vencimiento</td>
					</tr>
				</thead>
				<tbody>
					<g:each in="${publicaciones }" var="publicacion">
						<tr>
							<td><a href="http://localhost:8050/Meli/publicacion/show/${publicacion.id}">${publicacion.titulo }</a></td>
						
							<td>${publicacion.descripcion }</td>
						
							<td>${publicacion.fechaCreacion }</td>
						
							<td>${publicacion.fechaVencimiento }</td>
						
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
