<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <title>Categoria</title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar"/>
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Informe os dados da Categoria.</p>
                            </div>
                            <g:form controller="categoria">
                                <g:render template="form"/>
                                <div class="block-footer">

                                    <button type="reset" class="btn btn-default">Limpar</button> 
                                    <g:actionSubmit class="btn btn-primary" value="Cadastar" action="save"/>
                                </g:form>
                            </div>
                        </div>
                    </div>                                                   
                </div>
            </div>
        </div>
    </body>
</html>
