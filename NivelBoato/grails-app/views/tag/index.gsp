<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="application.css"/>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar"/>
                <a href="#show-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <ul>
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
                <div id="create-tag" class="content scaffold-create" role="main">
                    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${tagInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${tagInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                        </ul>
                    </g:hasErrors>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                Lista das tags cadastradas.
                            </div>
                            <g:form controller="tag">
                            <table class="table">
                                <thead>
                                    <tr>

                                        <g:sortableColumn property="descricao" title="${message(code: 'tag.descricao.label', default: 'Descricao')}" />

                                        <g:sortableColumn property="dataCadastro" title="${message(code: 'tag.dataCadastro.label', default: 'Data Cadastro')}" />

                                        <g:sortableColumn property="status" title="${message(code: 'tag.status.label', default: 'Status')}" />

                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${tagInstanceList}" status="i" var="tagInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                            <td><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "descricao")}</g:link></td>

                                            <td><g:formatDate date="${tagInstance.dataCadastro}" /></td>

                                            <td><g:formatBoolean boolean="${tagInstance.status}" /></td>

                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                            <g:if test="${tagInstanceCount>params.max}">
                                <div class="pagination">
                                    <g:paginate total="${tagInstanceCount ?: 0}" />
                                </div>
                            </g:if>
                            </g:form>

                        </div>
                    </div>                                                   
                </div>
            </div>
        </div>
    </body>
</html>