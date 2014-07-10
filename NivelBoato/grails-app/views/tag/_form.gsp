<%@ page import="entidade.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="tag.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="150" required="" value="${tagInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'dataCadastro', 'error')} required">
	<label for="dataCadastro">
		<g:message code="tag.dataCadastro.label" default="Data Cadastro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCadastro" precision="day"  value="${tagInstance?.dataCadastro}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="tag.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${tagInstance?.status}" />

</div>

