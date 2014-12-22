<div class="block-content controls">

	<div class="row-form">
		<g:hiddenField name="id" value="${categoriaInstance?.id}" />
		<div class="col-md-2">
			<strong>Descrição:</strong>
		</div>
		<div class="col-md-10">
			<g:textField name="descricao" class="form-control"
				value="${categoriaInstance?.descricao}" />
		</div>
	</div>

	<div class="row-form">
		<div class="col-md-2">
			<strong>Status:</strong>
		</div>
		<div class="col-md-10">
			<label class="switch"> <g:checkBox name="status"
					checked="${categoriaInstance?.status}" /> <span></span>
			</label>
		</div>
	</div>
</div>