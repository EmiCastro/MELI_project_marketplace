



<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="publicacion.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" maxlength="100" required="" value="${publicacionInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="publicacion.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${publicacionInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="publicacion.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="precio" required="" value="${publicacionInstance?.precio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="publicacion.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${publicacionInstance?.fechaCreacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'nuevo', 'error')} required">
	<label for="nuevo">
		<g:message code="publicacion.nuevo.label" default="Nuevo?" />
		<span class="required-indicator">*</span>
	</label>
	<g:checkBox name="nuevo" value="${publicacionInstance?.nuevo }"/>
</div>

