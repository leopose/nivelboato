<div class="block-content controls">

	<div class="row-form">
		<g:hiddenField name="id" value="${boatoInstance?.id}" />
		<div class="col-md-2">
			<strong>Titulo:</strong>
		</div>
		<div class="col-md-10">
			<g:textField name="titulo" class="form-control validate[required]" data-errormessage-value-missing="* Informe o título do boato."
				value="${boatoInstance?.titulo}" placeholder="Informe o título do boato aqui." />
		</div>
	</div>
	<div class="row-form">
		<div class="col-md-2">
			<strong>Descrição:</strong>
		</div>
		<div class="col-md-10">
			<g:textArea class="form-control validate[required]" name="descricao" placeholder="Descreva em poucas palavras o boato..."
			 value="${boatoInstance?.descricao}"/>
		</div>
	</div>

	<div class="row-form">
		<div class="col-md-2">
			<strong>Data Inicio:</strong>
		</div>
		<div class="col-md-10">
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			<g:textField id="dataInicio" class="form-control validate[required]" name="dataInicio" placeholder="Data que o boato será iniciado..."
			 value="${boatoInstance?.dataInicio}"/>
			</div>
		</div>
	</div>

	<div class="row-form">
		<div class="col-md-2">
			<strong>Data Fim:</strong>
		</div>
		<div class="col-md-10">
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			<g:textField id="dataFim" class="form-control validate[required]" name="dataFim" placeholder="Data para terminar o boato..."
			 value="${boatoInstance?.dataFim}"/>
			</div>
		</div>
	</div>

	<div class="row-form">
		<div class="col-md-2">
			<strong>Categoria:</strong>
		</div>
		<div class="col-md-10">
			<g:select name="categoria" class="form-control validate[required]"
				noSelection="['': 'Selecione uma categoria...']"
				from="${listCategoriaInstance}" optionKey="id" optionValue="descricao"
				value="${boatoInstance?.categoria?.id}" />
		</div>
	</div>
	<div class="row-form">
		<div class="col-md-2">
			<strong>Tags:</strong>
		</div>
		<div class="col-md-10">
			<g:textField name="tag" class="tagsinput" value="${tagInstance}" />
		</div>
	</div>

</div>