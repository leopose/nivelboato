
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><g:layoutTitle default="Grails"/></title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <link href="${resource(dir: 'css', file: 'styles.css')}" rel="stylesheet" type="text/css" />
        <!--[if lt IE 10]><link rel="stylesheet" type="text/css" href="css/ie.css"/><![endif]-->        

        <script type="text/javascript" src="${resource(dir: 'js/plugins/jquery/', file: 'jquery.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/plugins/jquery/', file: 'jquery-ui.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/plugins/bootstrap/', file: 'bootstrap.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/plugins/mcustomscrollbar/', file: 'jquery.mCustomScrollbar.min.js')}"></script>

<!-- your javascripts -->

        <script type="text/javascript" src="${resource(dir: 'js', file: 'plugins.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'actions.js')}"></script>     
        <g:layoutHead/>
    </head>
    <body>
        <div class="page-container">

            <div class="page-head">

                <ul class="page-head-elements">
                    <li><a href="#" class="page-navigation-toggle"><span class="fa fa-bars"></span></a></li>
                    <li class="search">
                        <input type="text" class="form-control" placeholder="Search..."/>
                    </li>
                </ul>
            </div>

            <div class="page-navigation">

                <div class="page-navigation-info">
                    <a href="index.html" class="logo">Logo</a>
                </div>

                <div class="profile">                    
                    <img src="img/samples/users/user-30.jpg"/>
                    <div class="profile-info">
                        <a href="#" class="profile-title">Howdy, John Doe</a>
                        <span class="profile-subtitle">Administrator</span>
                        <div class="profile-buttons">
                            <div class="btn-group">                                
                                <a class="but dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation" class="dropdown-header">Profile Menu</li>
                                    <li><a href="#">Messages</a></li>                                    
                                    <li><a href="#">Statistics</a></li>
                                    <li><a href="#">Changelog</a></li>
                                    <li><a href="#">Settings</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Logout</a></li>
                                </ul>
                            </div>
                        </div>                        
                    </div>
                </div>

                <ul class="navigation">
                    <li class="active"><g:link resource="index"><i class="fa fa-dashboard"></i>Página Inicial</g:link></li>
                        <li><a href="#"><i class="fa fa-bookmark"></i> Categorias</a>
                            <ul>
                                <li><g:link controller="categoria" action="create">Cadastrar</g:link></li>
                                <li><g:link controller="categoria" action="index">Listar</g:link></li>
                            </ul>
                        </li>                    
                        <li><a href="#"><i class="fa fa-pencil"></i> Form Stuff</a>
                            <ul>
                                <li><a href="form-elements.html">Elements</a></li>
                                <li><a href="form-editable.html">Editable Form</a></li>
                                <li><a href="form-validation.html">Validation</a></li>
                                <li><a href="form-wizard.html">Wizard</a></li>
                                <li><a href="form-wysiwyg.html">WYSIWYG Editors</a></li>
                            </ul>
                        </li>                    
                        <li><a href="#"><i class="fa fa-cogs"></i> UI Elements</a>
                            <ul>
                                <li><a href="ui-widgets.html">Widgets</a></li>
                                <li><a href="ui-buttons.html">Buttons</a></li>
                                <li><a href="ui-slider-progress.html">Slider & Progress</a></li>
                                <li><a href="ui-modals.html">Modals & Popups</a></li>
                                <li><a href="ui-tabs.html">Tabs & Accordion</a></li>
                                <li><a href="ui-lists.html">Lists</a></li>
                                <li><a href="ui-blocks-panels.html">Blocks & Panels</a></li>
                                <li><a href="ui-icons.html">Icons</a></li>
                                <li><a href="ui-typography.html">Typography</a></li>
                                <li><a href="ui-grid.html">Grid</a></li>
                                <li><a href="ui-nestable.html">Nestable List</a></li>
                            </ul>
                        </li> 
                        <li><a href="#"><i class="fa fa-table"></i> Tables</a>
                            <ul>
                                <li><a href="tables-default.html">Default Tables</a></li>
                                <li><a href="tables-datatables.html">DataTables</a></li>                            
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-map-marker"></i> Maps</a>
                            <ul>
                                <li><a href="maps-google.html">Google Maps</a></li>
                                <li><a href="maps-vector.html">Vector Maps</a></li>                            
                            </ul>
                        </li>
                        <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i> Charts</a>
                        <li><a href="#"><i class="fa fa-folder-open"></i> Pages</a>
                            <ul>
                                <li><a href="#"><i class="fa fa-envelope"></i> Mailbox</a>
                                    <ul>
                                        <li><a href="pages-mailbox-inbox.html"><i class="fa fa-inbox"></i> Inbox</a></li>
                                        <li><a href="pages-mailbox-new.html"><i class="fa fa-pencil"></i> New Message</a></li>
                                        <li><a href="pages-mailbox-view.html"><i class="fa fa-eye"></i> View Message</a></li>
                                    </ul>
                                </li>
                                <li><a href="pages-signin.html"><i class="fa fa-sign-in"></i> Sign in</a></li>
                                <li><a href="pages-signup.html"><i class="fa fa-user"></i> Sign up</a></li>
                                <li><a href="pages-timeline.html"><i class="fa fa-location-arrow"></i> Timeline</a></li>
                                <li><a href="pages-invoice.html"><i class="fa fa-dollar"></i> Invoice</a></li>
                                <li><a href="pages-error-404.html"><i class="fa fa-warning"></i> Error 404</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-code-fork"></i> Navigation Levels</a>
                            <ul>
                                <li><a href="#"><i class="fa fa-caret-right"></i> Second Level</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-caret-right"></i> Third Level</a>
                                            <ul>
                                                <li><a href="#"><i class="fa fa-caret-right"></i> Fourth Level</a>
                                                    <ul><li><a href="#"><i class="fa fa-caret-right"></i> Fifth Level</a></li></ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                        </ul>
                    </li>                    
                </ul>

            </div>


  <!-- Your content -->
            <g:layoutBody/>
            <div class="page-sidebar">

            </div>

        </div>

    </body>
</html>
