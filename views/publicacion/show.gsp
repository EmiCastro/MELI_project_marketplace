

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicacion.label', default: 'Publicacion')}" />
		<asset:stylesheet src="mostrarPublicacion.css"/>
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
<%--		<div class="nav" role="navigation">--%>
<%--			<ul>--%>
<%--				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--%>
<%--				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
		<div id="show-publicacion" class="d-flex flex-align-item content scaffold-show" role="main">
			<g:if test="${publicacionInstance?.titulo}">
			<h1 class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${publicacionInstance}" field="titulo"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publicacion">
			
				
				</g:if>
			
				<g:if test="${publicacionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="publicacion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${publicacionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${publicacionInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="publicacion.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${publicacionInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-email" class="property-label"><g:message code="publicacion.usuario.email" default="Usuario" />${publicacionInstance?.usuario?.email }</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form controller="comprar" action="realizarCompra" method="POST">
				<g:hiddenField name="idPublicacion" value="${publicacionInstance.id}"/>
				<g:submitButton name="Comprar!"/>
			</g:form>
		</div>
	</body>
</html>
