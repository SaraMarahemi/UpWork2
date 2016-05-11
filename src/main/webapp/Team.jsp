<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Index</title>

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
        <link rel="stylesheet" href="css/SignUp_style.css">
        <link rel="stylesheet" href="css/mainclass.css">
        <link rel="stylesheet" href="css/style_login.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/indexStyle.css">

        <script src="js/jquery-2.2.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </head>
    <body class="contentbody">
        <div class="wrapper" width="100%">
            <div class="header">

                <div class="row borderheader headerbody">
                
                    <div class=" top-margin">
                        
                        <div class="col-xs-4 col-sm-2 col-md-1 navbar-left">
                            <img src="images/LOGO.jpg">
                        </div> 
                        
                        <div class="col-xs-offset-1 col-xs-3 col-sm-5 col-md-6  navbar-brand">
                            <form> 
                                <div class="form-group"> 
                                    <div class="input-group">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><span class="glyphicon-search glyphicon"></span></button>
                                        </span>
                                        <input type="text" class="form-control ptext" placeholder="Ø¬Ø³ØªØ¬Ù">
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-3 col-lg-offset-1 navbar-right" style="margin-right:0px;">
                            <ol class="breadcrumb" style="background-color:white">
                                <li><button class=" btn btn-success navbar-btn ptext" onclick="exit()">Ø®Ø±ÙØ¬</button></li>

                            </ol>
                        </div>                        
                    </div>
                </div>
            </div>


            <div class="row" style="margin-top:55px;">
                
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    
                </div>

                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active alltext">
                                <a id="a_link" href="#home" aria-controls="home" role="tab" data-toggle="tab">Ø§ÙØ²ÙØ¯Ù Ø§Ø¹Ø¶Ø§</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a  id="a_link" href="#tab" aria-controls="tab" role="tab" data-toggle="tab">Ø§Ø¹Ø¶Ø§</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a  id="a_link" href="#search" aria-controls="tab" role="tab" data-toggle="tab">Ø¯Ø±Ø®ÙØ§Ø³Øª Ú©Ø§Ø±</a>
                            </li>
                            
                            
                        </ul>
                    
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù Ø§ÙÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù Ø¯ÙÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù Ø³ÙÙ">
                                                
                                            </div>


                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø«Ø¨Øª ØªØºÛÛØ±</button>
                                        </form>

                                        
                                    </div>
                                </div>
                                
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù Ø§ÙÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù Ø¯ÙÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù Ø³ÙÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ø¹Ø¶Ù ÚÙØ§Ø±Ù">
                                                
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø§Ø±Ø³Ø§Ù</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="search">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ØªØ®ØµØµ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙÙØ¹ Ø´ØºÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø³ÙØ¨ÙÙ Û Ú©Ø§Ø± ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø³ÙØ¯ Ø¯Ø±ÛØ§ÙØªÛ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ú©Ø§Ø±ÙØ±ÙØ§">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø²ÙØ§Ù Ø§ÙØ¬Ø§Ù Ú©Ø§Ø±">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø§Ø±Ø³Ø§Ù Ø¯Ø±Ø®ÙØ§Ø³Øª</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="privacy">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">

                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø¹ÙÙØ§Ù Ù¾Ø±ÙÚÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø²ÙØ§Ù Ù¾Ø±ÙÚÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø³ÙØ¯ Ù¾Ø±ÙÚÙ">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø§ÛØ¬Ø§Ø¯ Ø¯Ø±Ø®ÙØ§Ø³Øª</button>
                                        </form>
                                        
                                    </div>
                            </div>
                            
                            
                        </div>
                    </div>
                    
                </div>

                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    
                </div>

            </div>
            
            
        </div>

        <script >
            function exit() {
                window.location = "index.html"
            }
            

        </script>

        <script>
      function initMap() {
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
          center: {lat: 44.540, lng: -78.546},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>


    <script type="text/javascript" src="include/footer-index.js"></script>

    </body>

</html>