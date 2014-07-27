<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="template" />
<title>Usuário</title>
</head>
<body>
	<div class="page-content">
		<div class="container">
			<g:render template="../layouts/pagetoolbar" />
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<div class="block-content">
							<p>Informe os dados do usuário.</p>
						</div>
						<g:form controller="usuario">
							<g:eachError bean="${usuarioInstance}">

								<div class="alert alert-danger">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">×</button>
									<strong>Ops!</strong>
									<g:message error="${it}" />
								</div>

							</g:eachError>
							<g:render template="form" />
							<div class="row-form">
								<div class="col-md-2">
									<strong>Senha:</strong>
								</div>
								<div class="col-md-10">
									<g:passwordField name="senha" class="form-control"
										value="${usuarioInstance?.senha}" />
								</div>
							</div>
							<div class="block-footer">
								<button type="reset" class="btn btn-default">Limpar</button>
								<g:actionSubmit class="btn btn-primary" value="Cadastar"
									action="save" />
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>