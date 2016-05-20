<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Index</title>

        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
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
                                        <input type="text" class="form-control ptext" placeholder="جستجو">
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-3 col-lg-offset-1 navbar-right" style="margin-right:0px;">
                            <ol class="breadcrumb" style="background-color:white">
                                <li><button class=" btn btn-success navbar-btn ptext" onclick="exit()">خروج</button></li>

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
                                <a id="a_link" href="#home" aria-controls="home" role="tab" data-toggle="tab">افزودن اعضا</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a  id="a_link" href="#tab" aria-controls="tab" role="tab" data-toggle="tab">اعضا</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a  id="a_link" href="#search" aria-controls="tab" role="tab" data-toggle="tab">درخواست کار</a>
                            </li>
                            
                            
                        </ul>
                    
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو اول">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو دوم">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو سوم">
                                                
                                            </div>


                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">ثبت تغییر</button>
                                        </form>

                                        
                                    </div>
                                </div>
                                
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو اول">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو دوم">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو سوم">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری عضو چهارم">
                                                
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">ارسال</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="search">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="تخصص">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نوع شغل">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="سلبقه ی کار ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="سود دریافتی">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="نام کاربری کارفرما">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="زمان انجام کار">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">ارسال درخواست</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="privacy">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">

                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="عنوان پروژه">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="زمان پروژه">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="سود پروژه">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">ایجاد درخواست</button>
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
                window.location = "index.jsp"
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