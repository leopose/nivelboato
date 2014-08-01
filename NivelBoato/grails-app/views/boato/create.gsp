<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template" />
        <title>Boato</title>
   <script type="text/javascript" src="${resource(dir: 'js/plugins/tagsinput/', file: 'jquery.tagsinput.min.js')}"></script>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Informe os dados do novo Boato.</p>
                            </div>
                            <g:form controller="categoria">
                                <g:eachError bean="${boatoInstance}">
                                    
                                        <div class="alert alert-danger">
                                            <button type="button" class="close" data-dismiss="alert"
                                            aria-hidden="true">×</button>
                                            <strong>Ops!</strong>
                                            <g:message error="${it}"/>
                                        </div>
                                    
                                </g:eachError>
                                <g:render template="form" />
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
