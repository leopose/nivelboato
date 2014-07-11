
<%@ page import="entidade.Tag" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template">
        <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
</head>
<body>
    <div class="page-content">
        <div class="container">
            <g:render template="../layouts/pagetoolbar"/>

            <div id="list-tag" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table>
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
                <div class="pagination">
                    <g:paginate total="${tagInstanceCount ?: 0}" />
                </div>
            </div>
        </div>



</body>
</html>
