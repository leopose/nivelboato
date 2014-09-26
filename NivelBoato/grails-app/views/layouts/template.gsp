
<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
<title><g:layoutTitle default="Nivel de Boato" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="${resource(dir: 'css', file: 'styles.css')}"
	rel="stylesheet" type="text/css" />
<!--[if lt IE 10]><link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'ie.css')}"/><![endif]-->

<script type="text/javascript"
	src="${resource(dir: 'js/plugins/jquery/', file: 'jquery.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/jquery/', file: 'jquery-ui.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/bootstrap/', file: 'bootstrap.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/jquery/', file: 'bootbox.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/mcustomscrollbar/', file: 'jquery.mCustomScrollbar.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/datatables/', file: 'jquery.dataTables.min.js')}"></script>

<!-- your javascripts -->

<script type="text/javascript"
	src="${resource(dir: 'js', file: 'plugins.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'actions.js')}"></script>
<g:layoutHead />
</head>
<body>
	<div class="page-container">

		<div class="page-head">

			<ul class="page-head-elements">
				<li><a href="#" class="page-navigation-toggle"><span
						class="fa fa-bars"></span></a></li>
				<li class="search"><input type="text" class="form-control"
					placeholder="Search..." /></li>
			</ul>
		</div>

		<div class="page-navigation">

			<div class="page-navigation-info">
				<g:link resource="index" class="logo">Logo</g:link>
			</div>

			<div class="profile">
				<img id="avatarUsuario" />
				<div class="profile-info">
					<a id="nomeUsuario" href="#" class="profile-title"></a> <span
						id="perfilUsuario" class="profile-subtitle"></span>
					<div class="profile-buttons">
						<div class="btn-group">
							<a class="but dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-cog"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation" class="dropdown-header">Menu do
									Usuário</li>
								<li><a href="#">Messages</a></li>
								<li class="divider"></li>
								<li><g:link action="logout" controller="usuario">Sair do Sistema</g:link></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<ul class="navigation">
				<li class="active"><g:link resource="index">
						<i class="fa fa-dashboard"></i>Página Inicial</g:link></li>
				<li><a href="#"><i class="fa fa-bookmark"></i> Categorias</a>
					<ul>
						<li><g:link controller="categoria" action="create">Cadastrar</g:link></li>
						<li><g:link controller="categoria" action="index">Listar</g:link></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-tag"></i> TAGs</a>
					<ul>
						<li><g:link controller="tag" action="create">Cadastrar</g:link></li>
						<li><g:link controller="tag" action="index">Listar</g:link></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-users"></i>Usuários</a>
					<ul>
						<li><g:link controller="usuario" action="create">Cadastrar</g:link></li>
						<li><g:link controller="usuario" action="index">Gerenciar</g:link></li>
					</ul></li>

			</ul>

		</div>


		<!-- Your content -->
		<g:layoutBody />
		<div class="page-sidebar"></div>

	</div>
	<script type="text/javascript"
		src="${resource(dir: 'js', file: 'utilitario.js')}"></script>
</body>
</html>
