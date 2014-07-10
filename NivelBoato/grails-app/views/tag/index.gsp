
<%@ page import="entidade.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
			<g:render template="../layouts/pagetoolbar"/>
			<a href="#list-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
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
		
	</body>
</html>
