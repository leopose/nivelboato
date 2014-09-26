<div class="block-content controls">

	<div class="row-form">
		<g:hiddenField name="id" value="${boatoInstance?.id}" />
		<div class="col-md-2">
			<strong>Titulo:</strong>
		</div>
		<div class="col-md-10">
			<g:textField name="Titulo" class="form-control"
				value="${boatoInstance?.titulo}" />
		</div>
	</div>
	<div class="row-form">
		<div class="col-md-2">
			<strong>Descrição:</strong>
		</div>
		<div class="col-md-10">
			<textarea class="form-control"></textarea>
		</div>
	</div>
	<div class="row-form">
		<div class="col-md-2">
			<strong>Categoria:</strong>
		</div>
		<div class="col-md-10">
			<select class="form-control">
				<option>Option 1</option>
				<option>Option 2</option>
				<option>Option 3</option>
				<option>Option 4</option>
			</select>
		</div>
	</div>
	<div class="row-form">
		<div class="col-md-2">
			<strong>Tags:</strong>
		</div>
		<div class="col-md-10">
			<input type="text" class="tagsinput" value="tag1,tag2" />
		</div>
	</div>

</div>