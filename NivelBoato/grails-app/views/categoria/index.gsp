<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="template" />
<title>Categoria</title>
</head>
<body>
	<div class="page-content">
		<div class="container">
			<g:render template="../layouts/pagetoolbar" />
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<div class="block-content">
							<p>Lista das categorias cadastradas.</p>
						</div>
						<g:form controller="categoria">
							<div class="block-content np">
								<g:eachError bean="${categoriaInstance}">
									<div class="alert alert-danger">
										<button type="button" class="close" data-dismiss="alert"
											aria-hidden="true">×</button>
										<strong>Ops!</strong>
										<g:message error="${it}" />
									</div>

								</g:eachError>
								<g:if test="${flash.message}">
									<div class="alert alert-info">
										<button type="button" class="close" data-dismiss="alert"
											aria-hidden="true">×</button>
										<g:message code="${flash.message}" />
									</div>
								</g:if>
						
								<table id="tabCategorias" class="table table-hover">
									<thead>
										<tr>
											<th>id</th>
											<th>Data</th>
											<th>Descrição</th>
											<th>status</th>
											<th>Usuário</th>
											<th></th>
											<th></th>
										</tr>
									</thead>
								</table>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="${resource(dir: 'js', file: 'util.datatable.js')}"></script>
	<script type="text/javascript"
		src="${resource(dir: 'js', file: 'categoria.js')}"></script>
</body>
</html>
