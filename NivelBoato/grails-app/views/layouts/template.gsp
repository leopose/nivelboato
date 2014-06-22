
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><g:layoutTitle default="Grails"/></title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <link href="${resource(dir: 'css', file: 'styles.css')}" rel="stylesheet" type="text/css" />
        <!--[if lt IE 10]><link rel="stylesheet" type="text/css" href="css/ie.css"/><![endif]-->        

        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

<!-- your javascripts -->

        <script type="text/javascript" src="js/plugins.js"></script>
        <script type="text/javascript" src="js/actions.js"></script>     
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
                    <li class="active">
                        <a href="index.html"><i class="fa fa-dashboard"></i> Navigation </a>
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
