<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <title>Usuário</title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar"/>
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Altere os dados do usuário.</p>
                            </div>
                            <g:form controller="usuario">
                                <g:render template="form"/>
                                <div class="block-footer">
                                    <g:actionSubmit class="btn btn-primary" value="Editar" action="update"/>
                                </div>
                            </g:form>
                        </div>
                    </div>                                                   
                </div>
            </div>
        </div>
    </body>
</html>
