<div class="block-content controls">

	<div class="row-form">
		<g:hiddenField name="id" value="${tagInstance?.id}" />
		<div class="col-md-2">
			<strong>Descrição:</strong>
		</div>
		<div class="col-md-10">
			<g:textField name="descricao" class="form-control"
				value="${tagInstance?.descricao}" />
		</div>
	</div>

	<div class="row-form">
		<div class="col-md-2">
			<strong>Status:</strong>
		</div>
		<div class="col-md-10">
			<label class="switch"> <g:checkBox name="status"
					checked="${tagInstance?.status}" /> <span></span>
			</label>
		</div>
	</div>
</div>