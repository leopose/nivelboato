<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <title>Boatos Ativos</title>
    </head>
    <body>
        <div class="page-content">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-content">

                                <g:each in="${listBoatoInstance}" var="boato">
                                    <div class="widget-window">
                                        <div class="window window-dark">
                                            <div class="window-block">
                                                <div class="knob">
                                                    <input type="text" data-fgColor="#8CC152" data-readOnly=true data-bgColor="#FFFFFF" data-min="0" data-max="100" data-width="90" data-height="90" value="95"/>
                                                </div> 
                                            </div>
                                            <div class="window-block">
                                                <h2> ${boato.titulo} </h2>
                                                <label>${boato.descricao}</label><br/>
                                                <span class="text-muted">
                                                    <i class="fa fa-user"></i> ${boato.usuarioCadastro.nome} | <i class="fa fa-clock-o"></i> <g:formatDate format="dd-MM-yyyy" date="${boato.dataInicio}"/>
                                                </span>
                                                <p class="text-warning"><i class="fa fa-bookmark"></i> ${boato.categoria.descricao}</p>
                                                <button type="button" class="btn btn-success btn-xs" title="Confirmar"><i class="fa fa-thumbs-up"></i> 238</button>
                                                <button type="button" class="btn btn-danger btn-xs" title="Negar"><i class="fa fa-thumbs-down"></i> 110</button>
                                            </div>
                                            <g:each in="${boato.tags}" var="tag">
                                            <div class="window-block">
                                                <i class="fa fa-tag"></i> ${tag.descricao}
                                            </div>
                                            </g:each>
                                        </div>
                                    </div>
                                </g:each>

                            </div>
                        </div>
                    </div>                                                   
                </div>
            </div>
        </div>
        <script type="text/javascript" src="${resource(dir: 'js/plugins/knob/', file: 'jquery.knob.js')}"></script>
    </body>
</html>
