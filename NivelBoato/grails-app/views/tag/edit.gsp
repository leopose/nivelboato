
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template">
        <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Informe os dados da TAG.</p>
                            </div>
                            <g:form url="[resource:tagInstance, action:'update']" method="PUT" >
                                <g:hiddenField name="version" value="${tagInstance?.version}" />
                                <g:render template="form"/>
                                <div class="block-footer">
                                    <g:actionSubmit class="btn btn-default" value="Cancelar"
                                                action="index" />
                                    <g:actionSubmit class="btn btn-primary" value="Atualizar"
                                                action="update" />
                                </div>
                            </g:form>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    </body>
</html>
