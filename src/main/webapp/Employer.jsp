
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Employer Dashboard</title>

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
                        
                        <div class="col-xs-4 col-sm-2 col-md-1 col-sm-offset-1 navbar-left">
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
                        
                        <div class="col-xs-2 col-lg-2 col-lg-offset-1 navbar-right" style="margin-right:0px;">
                            <ol class="breadcrumb" style="background-color:white">
                                <li><button class=" btn btn-success navbar-btn ptext" onclick="exit()">Ø®Ø±ÙØ¬</button></li>
                                 <li><a class=" btn btn-info navbar-btn ptext" onclick="showProfile()" >Ù¾Ø±ÙÙØ§ÛÙ</a></li>
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
                                <a id="a_link" href="#home" aria-controls="home" role="tab" data-toggle="tab">ØµÙØ­Ù Ø´Ø±Ú©Øª</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#tab" aria-controls="tab" role="tab" data-toggle="tab">Ø§Ú¯ÙÛ Ø§Ø³ØªØ®Ø¯Ø§Ù</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#search" aria-controls="tab" role="tab" data-toggle="tab">Ø¬Ø³ØªØ¬Ù</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#privacy" aria-controls="tab" role="tab" data-toggle="tab">Ø¨Ø±ÙÙ Ø³Ù¾Ø§Ø±Û</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#profile" aria-controls="tab" role="tab" data-toggle="tab">Ù¾Ø±ÙÙØ§ÛÙ</a>
                            </li>
                            
                        </ul>
                    
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ø´Ø±Ú©Øª">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ¨Ú¯Ø§Ù Ø´Ø±Ú©Øª">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø§Ø¯Ø±Ø³ Ø´Ø±Ú©Øª">
                                                
                                            </div>


                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø°Ø®ÛØ±Ù</button>
                                        </form>

                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <div id="map" id="map" style="height: 400px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø¹ÙÙØ§Ù Ø´ØºÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙÛØ²Ø§Ù Ø¯Ø±Ø§ÙØ¯">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙÙØ¹ Ø´ØºÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ØªÙØ¶ÛØ­Ø§Øª">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙÙØ§Ø±Øª ÙÙØ±Ø¯ ÙÛØ§Ø²">
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
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø²ÙØ§Ù Ø§Ø±Ø³Ø§Ù Ø±Ø²ÙÙÙ">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø¬Ø³ØªØ¬Ù</button>
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
                        <div role="tabpanel" class="tab-pane" id="profile">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                            </div>
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                            </div>
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                  <button type="submit" onclick="showProfile()" class="btn btn-primary" style="margin-top: 40px;margin-bottom: 40px;width:100%;">ÙÛØ±Ø§ÛØ´ Ù¾Ø±ÙÙØ§ÛÙ</button>
                                            </div>
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                            </div>
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"> 
                                            </div>
                                        
                                    </div>
                                </div>
                            </div>
                    </div>
                    
                </div>

                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    
                </div>

            </div>
        
        </div>

        <script type="text/javascript" src="include/footer-index.js"></script>

        <script >
            function exit() {
                window.location = "index.html"
            }
             function showProfile(){
                window.location = "EmployerProfile.html"
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

    </body>

</html>