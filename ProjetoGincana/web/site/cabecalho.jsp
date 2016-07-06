<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Inicial</title>
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no" />
        <link rel="icon" href="images/favicon.ico">
        <link rel="shortcut icon" href="images/favicon.ico" />
        <link rel="stylesheet" href="css/countdown.css">
        <link rel="stylesheet" href="css/style_common.css" />
        <link rel="stylesheet" href="css/style4.css" />
        <link rel="stylesheet" href="css/camera.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.2.1.js"></script>
        <script src="js/script.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/camera.js"></script>
        <!--[if (gt IE 9)|!(IE)]><!-->
        <script src="js/jquery.mobile.customized.min.js"></script>
        <!--<![endif]-->
        <script>
            $(document).ready(function () {
                jQuery('#camera_wrap').camera({
                    loader: false,
                    pagination: false,
                    minHeight: '444',
                    thumbnails: false,
                    height: '27.86458333333333%',
                    caption: true,
                    navigation: true,
                    fx: 'simpleFade'
                });
                $().UItoTop({easingType: 'easeOutQuart'});
            });
        </script>
        <!--[if lt IE 8]>
                <div style=' clear: both; text-align:center; position: relative;'>
                        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
                                <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
                        </a>
                </div>
        <![endif]-->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <link rel="stylesheet" media="screen" href="css/ie.css">
        <![endif]-->
    </head>
    <body class="page1" id="top">
        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div class="container_12">
                    <div class="grid_12">
                        <h1>
                            <a href="index.html">
                                <img src="images/gincanalogo.jpg" width="400px">
                            </a>
                        </h1>
                        <br/>
                        <div class="menu_block">
                            <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                                <ul class="sf-menu">
                                    <li><a href="index.jsp">Inicial</a></li>
                                    <li><a href="if5anos.html">Gincana</a></li>
                                    <li><a href="programacao.jsp">Programação</a></li>
                                    <li><a href="modalidades.jsp">Modalidades</a></li>
                                    <li><a href="fotos.html">Fotos/Vídeos</a></li>
                                </ul>
                            </nav>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </header>

