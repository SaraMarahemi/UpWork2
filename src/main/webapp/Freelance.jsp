
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Freelancer Dashboard</title>
        
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
                                <a id="a_link" href="#home" aria-controls="home" role="tab" data-toggle="tab">ÙÛØ±Ø§ÛØ´</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#tab" aria-controls="tab" role="tab" data-toggle="tab">Ø§Ø±Ø³Ø§Ù Ø¯Ø±Ø®ÙØ§Ø³Øª</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#search" aria-controls="tab" role="tab" data-toggle="tab">Ø¬Ø³ØªØ¬Ù</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#privacy" aria-controls="tab" role="tab" data-toggle="tab">Ø­Ø±ÛÙ Ø´Ø®ØµÛ</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#recover" aria-controls="tab" role="tab" data-toggle="tab">Ø¨Ø§Ø²ÛØ§Ø¨Û Ø§ÛÙÛÙ</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#subscribe" aria-controls="tab" role="tab" data-toggle="tab">Ø§Ø´ØªØ±Ø§Ú©</a>
                            </li>
                        </ul>
                    
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ø®Ø§ÙÙØ§Ø¯Ú¯Û">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ú¯Ø°Ø± ÙØ§ÚÙ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ØªØ®ØµØµ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø³ÙØ§Ø¨Ù Ú©Ø§Ø±Û">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">ÙÛØ±Ø§ÛØ´</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ú©Ø§Ø±ÙØ±ÙØ§">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ØªÙØ¶ÛØ­Ø§Øª">
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
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø´Ø±Ú©Øª ÛØ§ Ú©Ø§Ø±ÙØ±ÙØ§ ÙÙØ±Ø¯ ÙØ¸Ø±">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø³Ø§Ø¨ÙÙ Û ÙØ¹Ø§ÙÛØª ">
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙÚ©Ø§Ù Ø´Ø±Ú©Øª/Ú©Ø§Ø±ÙØ±ÙØ§">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø¬Ø³ØªØ¬Ù</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="privacy">
                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio1">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù Ø´ÙØ¯</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio1">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù ÙØ´ÙØ¯</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class="">ÙØ§Ù</p>

                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio2">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù Ø´ÙØ¯</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio2">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù ÙØ´ÙØ¯</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class=""> ÙØ§Ù Ø®Ø§ÙÙØ§Ø¯Ú¯Û</p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio3">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù Ø´ÙØ¯</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio3">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù ÙØ´ÙØ¯</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class=""> Ø§ÛÙÛÙ</p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio4">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù Ø´ÙØ¯</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio4">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù ÙØ´ÙØ¯</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class=""> ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û</p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio5">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù Ø´ÙØ¯</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio5">ÙÙØ§ÛØ´ Ø¯Ø§Ø¯Ù ÙØ´ÙØ¯</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class="">ØªØ®ØµØµ</p>

                                    </div>

                                </div>

                            </div>
                            <div role="tabpanel" class="tab-pane" id="recover">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext"  style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="Ø§ÛÙÛÙ Ø¬ÙØª Ø¨Ø§Ø²ÛØ§Ø¨Û">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø¨Ø§Ø²ÛØ§Ø¨Û</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="subscribe">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext"  style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="" placeholder="ÙØ§Ù Ú©Ø§Ø±Ø¨Ø±Û Ú©Ø§Ø±ÙØ±ÙØ§ Ø¬ÙØª Ø§Ø´ØªØ±Ø§Ú©">
                                            </div>
                                        
                                            
                                        
                                            <button type="submit" class="btn btn-primary">Ø¨Ø§Ø²ÛØ§Ø¨Û</button>
                                        </form>
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
                window.location = "FreelanceProfile.html"
            }
            

        </script>

    </body>

</html>