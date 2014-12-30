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
                            <div id="cartaoBoatos" class="block-content">
                                <g:render template="cartaoBoato"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                            <center><button id="maisBoatos" class="btn btn-success"><span><i class="fa fa-ellipsis-h"></i> mais</span></button>
                                
                            </center>
                    </div>                                                   
                </div>
            </div>
        </div>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'pontuacao.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'boato.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/plugins/knob/', file: 'jquery.knob.js')}"></script>
    </body>
</html>
