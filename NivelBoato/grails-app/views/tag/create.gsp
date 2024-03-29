<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template">
        <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar"/>
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Informe os dados da Tag.</p>
                            </div>
                            <g:form controller="tag">
                                <g:eachError bean="${tagInstance}">
                                    <div class="block-content">
                                        <div class="alert alert-danger">
                                            <button type="button" class="close" data-dismiss="alert"
                                            aria-hidden="true">×</button>
                                            <strong>Ops!</strong>
                                            <g:message error="${it}"/>
                                        </div>
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
    </div>
    <script type="text/javascript">
        $('#home').removeClass('active');
        $('#menuTag').addClass('active open openable');
        $('#menuTagCadastrar').addClass('active');
    </script>
</body>
</html>
