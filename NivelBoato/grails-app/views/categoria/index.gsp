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
								<table class="table table-hover">
									<tbody>
										<tr>
											<th>id</th>
											<th>Descrição</th>
											<th>Data de Cadastro</th>
											<th>Usuário</th>
											<th>Status</th>
											<th></th>
										</tr>
										<g:each in="${categoriaList}" var="item">
											<tr>
												<td>
													${item.id}
												</td>
												<td>
													${item.descricao}
												</td>
												<td>
													<g:formatDate date="${item.dataCadastro}" type="datetime" style="LONG" timeStyle="SHORT"/>
													
												</td>
												<td>
													${item.usuarioCadastro}
												</td>
												<td><g:checkBox name="status" disabled="true"
														checked="${item.status}" /></td>
												<td>
													<center>
														<g:link action="edit" id="${item.id}"
															class="btn btn-success">
															<i class="fa fa-pencil"></i> Editar</g:link>
														<g:if test="${item.status }">
															<g:link class="btn btn-danger" action="remove" title="Desativar"
																id="${item.id}">
																<i class="fa fa-trash-o"></i>
                                                			</g:link>
														</g:if>
														<g:else>
															<g:link class="btn btn-danger" action="remove" disabled="disabled"
																id="${item.id}" title="Desativar">
																<i class="fa fa-trash-o"></i>
                                                			</g:link>
														</g:else>
													</center>
												</td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</div>
							<div class="modal fade" id="modal-delete" tabindex="-1"
								role="dialog" aria-hidden="true" style="display: none;">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">×</button>
											<h4 class="modal-title" id="myModalLabel">Excluir</h4>
										</div>
										<div class="modal-body">Confirma a exclusão da
											Categoria?</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Cancelar</button>
											<button type="button" class="btn btn-primary">Ok</button>
										</div>
									</div>
								</div>
							</div>
						</g:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
