<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template" />
        <title>TAG</title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">
                <g:render template="../layouts/pagetoolbar" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">
                                <p>Lista das tags cadastradas.</p>
                            </div>
                            <g:form controller="tag">
                                <div class="block-content np">
                                    <g:eachError bean="${tagInstance}">
                                        <div class="alert alert-danger">
                                            <button type="button" class="close" data-dismiss="alert"
                                            aria-hidden="true">×</button>
                                            <strong>Ops!</strong>
                                            <g:message error="${it}" />
                                        </div>

                                    </g:eachError>
                                    <g:if test="${flash.message}">
                                        <div class="alert alert-info">
                                            <button type="button" class="close" data-dismiss="alert"
                                            aria-hidden="true">×</button>
                                            <g:message code="${flash.message}" />
                                        </div>
                                    </g:if>
                                    <table id="tabTags" class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>Data</th>
                                                <th>Descrição</th>
                                                <th>status</th>
                                                <th>Usuário</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'tag.js')}"></script>
        <script type="text/javascript">
            $('#home').removeClass('active');
            $('#menuTag').addClass('active open openable');
            $('#menuTagListar').addClass('active');
        </script>
    </body>
</html>