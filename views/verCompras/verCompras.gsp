

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>${flash.message}</h1><%--
		<g:form url="[controller:VerCompras, action:'verCompras']" >
			<fieldset class="form">
				<div >
					<g:textField name="titulo" required="true"/>
				</div>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save" value="Listar" />
			</fieldset>
		</g:form>
		--%><h1>Compras: ${compras.size() }</h1>
			<table>
			<thead>
					<tr>
					
						<td>Titulo</td>
						<td>Descripcion</td>
						<td>Fecha de Compra</td>
					
					</tr>
				</thead>
				<tbody>
						<g:each in="${compras}" var="c">
					
							<td>${c.publicacion.titulo }</td>
						
							<td>${c.publicacion.descripcion }</td>
						
							<td>${c.fechaCompra }</td>

					</g:each>
				</tbody>
			</table>
	</body>
</html>
