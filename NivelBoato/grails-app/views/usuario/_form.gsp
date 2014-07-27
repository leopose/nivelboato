<div class="block-content controls">

    <div class="row-form">
        <g:hiddenField name="id" value="${usuarioInstance?.id}" />
        <div class="col-md-2">
            <strong>Nome:</strong>
        </div>
        <div class="col-md-10">
            <g:textField name="nome" class="form-control"
            value="${usuarioInstance?.nome}" />
        </div>
    </div>
    <div class="row-form">
        <div class="col-md-2">
            <strong>Chave:</strong>
        </div>
        <div class="col-md-10">
            <g:textField name="chave" class="form-control"
            value="${usuarioInstance?.chave}" />
        </div>
    </div>
    <div class="row-form">
        <div class="col-md-2">
            <strong>Senha:</strong>
        </div>
        <div class="col-md-10">
            <g:passwordField name="senha" class="form-control"
            value="${usuarioInstance?.senha}" />
        </div>
    </div>
    <div class="row-form">
        <div class="col-md-2">
            <strong>Email:</strong>
        </div>
        <div class="col-md-10">
            <g:textField name="email" class="form-control"
            value="${usuarioInstance?.email}" />
        </div>
    </div>
    <div class="row-form">
        <div class="col-md-2">
            <strong>Status:</strong>
        </div>
        <div class="col-md-10">
            <label class="switch"> <g:checkBox name="status"
                checked="${usuarioInstance?.status}" /> <span></span>
            </label>
        </div>
    </div>
        <div class="row-form">
        <div class="col-md-2">
            <strong>Perfil:</strong>
        </div>
        <div class="col-md-10">
            <g:select name="perfil" class="form-control" from="${perfilInstance}" value="${usuarioInstance?.perfil}" />
        </div>
    </div>

</div>