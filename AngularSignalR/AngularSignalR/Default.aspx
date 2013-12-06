﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AngularSignalR.Default" %>

<!DOCTYPE html>

<html lang="en" ng-app="demoApp">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Test of multiple frameworks">
    <meta name="author" content="Christopher Cassidy">
    <link rel="shortcut icon" href="favicon.ico">

    <title>AngularJS | WCF | EF | MySQL</title>

    <link rel="stylesheet" href="~/web/css/bootstrap-theme.css">
    <link rel="stylesheet" href="~/web/css/bootstrap.css">
    <link rel="stylesheet" href="~/web/css/animations.css">

    <script src="web/js/lib/jquery/jquery-1.9.1.js"></script>
    <script src="web/js/lib/jquery/jquery-ui-1.10.3.custom.js"></script>
    <script src="web/js/lib/angular/angular.js"></script>
    <script src="web/js/lib/angular/angular-animate.js"></script>
    <script src="web/js/lib/angular/angular-resource.js"></script>
    <script src="web/js/lib/angular/angular-route.js"></script>
    <script src="web/js/lib/bootstrap.js"></script>
    <script src="web/js/flickr.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

    <script src="web/js/app.js"></script>
    <script src="web/js/animations.js"></script>
    <script src="web/js/controllers.js"></script>
    <script src="web/js/filters.js"></script>
    <script src="web/js/services.js"></script>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="default.aspx">AngularJS | WCF | EF | MySQL</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#demo">Demo</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>

    <div id="wrapper">

        <div id="demo" class="cc-panel show">
            <div class="container">
                <div class="starter-template">
                    <h1>AngularJS | WCF | EF | MySQL</h1>
                    <p class="lead">This is a demo of a few different web technologies in use together.</p>
                </div>

                <div class="row well" style="margin-bottom: 30px;">
                    <h2>Demo</h2>
                    <p>This demonstration shows a collection of products loaded asnychronously from the server and displayed to the client.  Clicking the like button will update the product on the server and database.  Go to the <strong>ABOUT</strong> page for details on how this magic happened.</p>
                </div>
                <div class="row view-container well">
                    <div ng-view class="view-frame"></div>
                </div>
            </div>
        </div>


        <div id="about" class="cc-panel hide">
            <div class="container">
                <div class="starter-template">
                    <h2>Frameworks at play</h2>
                    <p>Client-side Bootstrap 3.0 is used for the responsive deisgn.  AngularJS is used for model persistence between client and server, as well as view routing, etc. Windows Communiation Foundation is used for the RESTful web service.  Eneity Framework is used for the Object Relational Mapping on the server between the Models and Data Context.  MySQL is used for the data persistence layer.</p>
                </div>
                <div class="row well">
                    
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="Web/images/tech/bootstrap-logo.png" />
                            <div class="caption">
                                <h3>Bootstrap 3.0</h3>
                                <p>I am using the Bootstrap framework for the presentation layer for rapid build of a very simple layout.</p>
                                <p>
                                    <a href="http://getbootstrap.com/">Bootstrap</a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="Web/images/tech/angularjs-logo.png" />
                            <div class="caption">
                                <h3>Angular.js</h3>
                                <p>I use Angular.js to build an MVC style javascript framework, allowing the binding of business objects to client views, and presisting changes to the model client side to the server.</p>
                                <p>This also uses Jquery for dom maniuplation and css animations, Handlebars.js for templating html with models, and Underscore.js as a dependency for Backbone.js</p>
                                <p>
                                    <a href="http://angularjs.org">Angular.js</a><br />
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="Web/images/tech/wcf-logo.jpg" style="max-height: 160px;" />
                            <div class="caption">
                                <h3>Windows Communication Foundation</h3>
                                <p>I use WCF to build RESTful web services for client-server communications through an API.  This enables AngularJS to presist models to the server/database.</p>
                                <p><a href="http://msdn.microsoft.com/en-us/library/ms731082.aspx">Windows Communiaction Foundation</a></p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="web/images/tech/ef-logo.jpg" style="max-height: 160px;">
                            <div class="caption">
                                <h3>Entity Framework</h3>
                                <p>Entity Framework provides the data-object persistence layer in the application.  This removes the need for building lower level data access components and business object mappings.</p>
                                <p>
                                    <a href="http://msdn.microsoft.com/en-us/data/ef.aspx">Entity Framework</a><br />
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="contact" class="cc-panel hide">
            <div class="container">
                <div class="starter-template">
                    <h2>Get in contact</h2>
                </div>
                <div class="row well">
                    <div class="col-sm-6 col-md-3 col-md-offset-3">
                        <div class="thumbnail">
                            <img src="Web/images/chris-profile.jpg" style="max-height: 240px;" />
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <p><span class="glyphicon glyphicon-user"></span>Christopher Cassiy</p>
                        <p><span class="glyphicon glyphicon-send"></span><a href="mailto:hello@christopher-cassidy.cc" target="_blank">hello@christopher-cassidy.cc</a></p>
                        <p><span class="glyphicon glyphicon-globe"></span><a href="http://www.christopher-cassidy.cc" target="_blank">www.christopher-cassidy.cc</a></p>
                        <p>
                            <br />
                            <br />
                            <br />
                            <small>&copy; 2013  |  Christopher Cassidy.</small></p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.cc-panel.hide').css({ 'left': '100%' }).removeClass('hide');

            //bind events
            $('.nav a').on('click', function (event) {
                event.preventDefault();

                $(this).parent().parent().find('li.active').removeClass('active');
                $(this).parent().addClass('active');

                var id = $(this).attr('href');
                $('.cc-panel.show').stop(true, true).animate({ 'left': '-100%' }, 1000, function () { $(this).css({ 'left': '100%' }).removeClass('show'); });
                $(id).stop(true, true).animate({ 'left': '0%' }, 1000, function () { $(this).addClass('show'); });
                //$(id).show('slide', { direction: 'right' }, 3000, function () { $(this).addClass('show'); });
            });
        });
    </script>
</body>
</html>