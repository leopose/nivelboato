



<div class="fieldcontain ${hasErrors(bean: newGroovyClassInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="newGroovyClass.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${newGroovyClassInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: newGroovyClassInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="newGroovyClass.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${newGroovyClassInstance?.senha}"/>

</div>

