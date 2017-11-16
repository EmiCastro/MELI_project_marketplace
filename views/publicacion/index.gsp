

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicacion.label', default: 'Publicacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-publicacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'publicacion.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'publicacion.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'publicacion.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="fechaVencimiento" title="${message(code: 'publicacion.fechaVencimiento.label', default: 'Fecha Vencimiento')}" />
					
						<th><g:message code="publicacion.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${publicacionInstanceList}" status="i" var="publicacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${publicacionInstance.id}">${fieldValue(bean: publicacionInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: publicacionInstance, field: "descripcion")}</td>
					
						<td><g:formatDate date="${publicacionInstance.fechaCreacion}" /></td>
					
						<td><g:formatDate date="${publicacionInstance.fechaVencimiento}" /></td>
					
						<td>${fieldValue(bean: publicacionInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			</div>
		</div>
	</body>
</html>
