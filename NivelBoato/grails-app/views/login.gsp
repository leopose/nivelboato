<html>
<head>
<title>Nivel de Boato</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="css/styles.css" rel="stylesheet" type="text/css">
<!--[if lt IE 10]><link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'ie.css')}"/><![endif]-->


<script type="text/javascript"
	src="${resource(dir: 'js/plugins/jquery/', file: 'jquery.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/jquery/', file: 'jquery-ui.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/bootstrap/', file: 'bootstrap.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/mcustomscrollbar/', file: 'jquery.mCustomScrollbar.min.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js/plugins/jquery-validation/', file: 'jquery.validate.min.js')}"></script>

<script type="text/javascript"
	src="${resource(dir: 'js', file: 'plugins.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'actions.js')}"></script>




</head>
<body>

	<div class="page-container">

		<div class="page-content page-content-default mCustomScrollbar _mCS_1">
			<div class="mCustomScrollBox mCS-light" id="mCSB_1"
				style="position: relative; height: 100%; overflow: hidden; max-width: 100%;">
				<div class="mCSB_container mCS_no_scrollbar"
					style="position: relative; top: 0px;">

					<div class="block-login">
						<div class="block-login-logo">
							<a class="logo">NDS</a>
						</div>
						<div class="block-login-content">
							<h1>Entrar</h1>
							<g:form id="signinForm" controller="usuario">
								<div class="form-group">
									<input type="text" name="chave" class="form-control"
										placeholder="Sua chave de acesso">
								</div>
								<div class="form-group">
									<input type="password" name="senha" class="form-control"
										placeholder="Sua senha">
								</div>
								<g:actionSubmit action="logar" class="btn btn-primary btn-block" value="Entrar"/>
								<p class="text-danger"><g:message message="${flash.message}"/></p>
								
							</g:form>
						</div>

					</div>

				</div>
				<div class="mCSB_scrollTools"
					style="position: absolute; display: none;">
					<div class="mCSB_draggerContainer">
						<div class="mCSB_dragger" style="position: absolute; top: 0px;"
							oncontextmenu="return false;">
							<div class="mCSB_dragger_bar" style="position: relative;"></div>
						</div>
						<div class="mCSB_draggerRail"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$("#signinForm").validate({
			rules : {
				login : "required",
				password : "required"
			},
			messages : {
				login : "Informe a chave de acesso.",
				password : "Informe a senha de acesso."
			}
		});
	</script>



</body>
</html>