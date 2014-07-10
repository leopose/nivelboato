<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <title>Categoria</title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar"/>
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Lista das categorias cadastradas.</p>
                            </div>
                            <g:form controller="categoria">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>id</th>
                                            <th>descricao</th>
                                            <th>dataCadastro</th>
                                            <th>usuarioCadastro</th>
                                            <th>status</th>
                                        </tr>
                                        <g:each in="${categoriaList}" var="item">
                                            <tr>
                                                <td>${item.id}</td>
                                                <td>${item.descricao}</td>
                                                <td>${item.dataCadastro}</td>
                                                <td>${item.usuarioCadastro}</td>
                                                <td>${item.status}</td>
                                            </tr>
                                        </g:each>
                                    </tbody>
                                </table>
                            </g:form>

                        </div>
                    </div>                                                   
                </div>
            </div>
        </div>
    </body>
</html>
