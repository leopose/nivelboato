<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template" />
        <title>Categoria</title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Lista das categorias cadastradas.</p>
                            </div>
                            <g:form controller="categoria">
                                <div class="block-content np">
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>id</th>
                                            <th>Descrição</th>
                                            <th>Data de Cadastro</th>
                                            <th>Usuário</th>
                                            <th>Status</th>
                                            <th></th>
                                        </tr>
                                        <g:each in="${categoriaList}" var="item">
                                            <tr>
                                                <td>
                                                    ${item.id}
                                                </td>
                                                <td>
                                                    ${item.descricao}
                                                </td>
                                                <td>
                                                    ${item.dataCadastro}
                                                </td>
                                                <td>
                                                    ${item.usuarioCadastro}
                                                </td>
                                                <td><g:checkBox name="status" disabled="true"
                                                    checked="${item.status}" /></td>
                                                <td>
                                        <center>
                                            <g:link action="edit" id="${item.id}"
                                                class="btn btn-success">
                                                <i class="fa fa-pencil"></i> Editar</g:link>
                                                <button class="btn btn-danger">
                                                    <i class="fa fa-trash-o"></i> Excluir
                                            </button>
                                        </center>
                                        </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>
                                </div>
                                <br />
                                <g:message code="${flash.message}" />
                            </g:form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
