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
							<p>Usuários cadastrados.</p>
						</div>
						<g:form controller="usuario">
							<div class="block-content np">
								<g:eachError bean="${usuarioInstance}">
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
								<table class="table table-hover">
									<tbody>
										<tr>
											<th>id</th>
											<th>Nome</th>
											<th>Chave</th>
											<th>Data de Cadastro</th>
											<th>Email</th>
											<th>Status</th>
											<th>Perfil</th>
											<th></th>
										</tr>
										<g:each in="${usuarioInstance}" var="item">
											<tr>
												<td>
													${item.id}
												</td>
												<td>
													${item.nome}
												</td>
												<td>
													${item.chave}
												</td>
												<td><g:formatDate date="${item.dataCadastro}"
														type="datetime" style="LONG" timeStyle="SHORT" /></td>
												<td>
													${item.email}
												</td>
												<td><g:checkBox name="status" disabled="true"
														checked="${item.status}" /></td>
												<td>
													${item.perfil.descricao}
												</td>
												<td>
													<center>
														<g:link action="edit" id="${item.id}"
															class="btn btn-success">
															<i class="fa fa-pencil"></i> Editar</g:link>
														<g:if test="${item.status }">
															<g:link action="remove" id="${item.id}" title="Desativar"
															class="btn btn-danger">
															<i class="fa fa-trash-o"></i></g:link>
														</g:if>
														<g:else>
															<button class="btn btn-danger" disabled="disabled"
																id="${item.id}" title="Desativar">
																<i class="fa fa-trash-o"></i>
															</button>
														</g:else>
													</center>
												</td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
