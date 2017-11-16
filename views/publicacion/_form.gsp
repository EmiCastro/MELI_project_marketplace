



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

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="publicacion.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${publicacionInstance?.fechaCreacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="publicacion.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${publicacionInstance?.fechaVencimiento}"  />

</div>

