<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar"/>
                <div id="create-tag" class="content scaffold-create" role="main">
                    
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
                                <p>Lista das tags cadastradas.</p>
                            </div>
                            <g:form controller="tag">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <g:sortableColumn property="id" title="${message(code: 'tag.id.label', default: 'Id')}" />

                                        <g:sortableColumn property="descricao" title="${message(code: 'tag.descricao.label', default: 'Descricao')}" />

                                        <g:sortableColumn property="dataCadastro" title="${message(code: 'tag.dataCadastro.label', default: 'Data Cadastro')}" />

                                        <g:sortableColumn property="status" title="${message(code: 'tag.status.label', default: 'Status')}" />
                                        <th></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${tagInstanceList}" status="i" var="tagInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                            <td>${fieldValue(bean: tagInstance, field: "id")}</td>

                                            <td>${fieldValue(bean: tagInstance, field: "descricao")}</td>

                                            <td><g:formatDate date="${tagInstance.dataCadastro}" type="datetime" style="LONG" timeStyle="SHORT"/></td>

                                            <td><g:checkBox name="status" disabled="true"
                                                        checked="${tagInstance.status}" /></td>
                                            <td>
                                                <center>
                                                    <g:link action="edit" id="${tagInstance.id}"
                                                        class="btn btn-success">
                                                        <i class="fa fa-pencil"></i> Editar</g:link>
                                                    <g:if test="${tagInstance.status}">
                                                        <g:link class="btn btn-danger" action="remove" title="Desativar"
                                                            id="${tagInstance.id}">
                                                            <i class="fa fa-trash-o"></i>
                                                        </g:link>
                                                    </g:if>
                                                    <g:else>
                                                        <g:link class="btn btn-danger" action="remove" disabled="disabled"
                                                            id="${tagInstance.id}" title="Desativar">
                                                            <i class="fa fa-trash-o"></i>
                                                        </g:link>
                                                    </g:else>
                                                </center>
                                            </td>

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