<div class="block-content controls">

	<div class="row-form ${hasErrors(bean: tagInstance, field: 'dataCadastro', 'error')} required">
		<div class="col-md-3">
			<label for="descricao">
				<g:message code="tag.descricao.label" default="Descricao" />
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div class="col-md-9">
			<g:textField name="descricao" class="form-control" maxlength="150" required="" value="${tagInstance?.descricao}"/>
		</div>
	</div>

	<div class="${hasErrors(bean: tagInstance, field: 'dataCadastro', 'error')} required">
		<div class="col-md-3">
		<label for="dataCadastro">
			<g:message code="tag.dataCadastro.label" default="Data Cadastro" />
			<span class="required-indicator">*</span>
		</label>
		</div>
		<div class="col-md-9">
			<g:datePicker name="dataCadastro" class="form-control datepicker"  precision="day" value="${tagInstance?.dataCadastro}"  />
		</div>
	</div>

	<div class="${hasErrors(bean: tagInstance, field: 'status', 'error')}">
		<div class="col-md-3">
			<label for="status">
				<g:message code="tag.status.label" default="Ativo" />	
			</label>
		</div>
		<div class="checkbox col-md-9">
			<g:checkBox name="status" class="form-control icheck" value="${tagInstance?.status}" />
		</div>

	</div>
</div>
