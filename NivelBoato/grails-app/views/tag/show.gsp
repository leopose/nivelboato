
<%@ page import="entidade.Tag" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template">
        <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    <asset:stylesheet src="application.css"/>
</head>
<body>
    <div class="page-content">
        <div class="container">
            <g:render template="../layouts/pagetoolbar"/>
            
                <div id="show-tag" class="content scaffold-show" role="main">
                    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <ol class="property-list tag">

                    <g:if test="${tagInstance?.descricao}">
                        <li class="fieldcontain">
                            <span id="descricao-label" class="property-label"><g:message code="tag.descricao.label" default="Descricao" /></span>

                            <span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${tagInstance}" field="descricao"/></span>

                        </li>
                    </g:if>

                    <g:if test="${tagInstance?.dataCadastro}">
                        <li class="fieldcontain">
                            <span id="dataCadastro-label" class="property-label"><g:message code="tag.dataCadastro.label" default="Data Cadastro" /></span>

                            <span class="property-value" aria-labelledby="dataCadastro-label"><g:formatDate date="${tagInstance.dataCadastro}" type="datetime" style="LONG" timeStyle="SHORT"/></span>

                        </li>
                    </g:if>

                    <g:if test="${tagInstance?.status}">
                        <li class="fieldcontain">
                            <span id="status-label" class="property-label"><g:message code="tag.status.label" default="Status" /></span>

                            <span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${tagInstance?.status}" /></span>

                        </li>
                    </g:if>

                </ol>
                <g:form url="[resource:tagInstance, action:'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit" action="edit" resource="${tagInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>
