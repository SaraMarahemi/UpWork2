
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Freelancer Profile</title>

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
        <link rel="stylesheet" href="css/SignUp_style.css">
        <link rel="stylesheet" href="css/mainclass.css">
        <link rel="stylesheet" href="css/style_login.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/freelanceProfile.css" rel="stylesheet">

        <script src="js/jquery-2.2.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </head>
    <body class="contentbody">
        <div class="wrapper" width="100%">
            <div class="header">

                <div class="row borderheader headerbody" style="margin-right:0px;">
                
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
                                <li><button class=" btn btn-danger navbar-btn ptext" onclick="setting()" data-toggle="modal" data-target="#signUp">ØªÙØ¸ÛÙØ§Øª</button></li>
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
                                <a id="a_link" href="#overview" aria-controls="home" role="tab" data-toggle="tab">Ø¯ÙØ±ÙÙØ§</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#skills" aria-controls="tab" role="tab" data-toggle="tab">ÙÙØ§Ø±Øª ÙØ§</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#workhistory" aria-controls="tab" role="tab" data-toggle="tab">Ø³ÙØ§Ø¨Ù Ú©Ø§Ø±Û</a>
                            </li>
                            <li role="education" class="alltext">
                                <a id="a_link" href="#education" aria-controls="tab" role="tab" data-toggle="tab">ØªØ­ØµÛÙØ§Øª</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#contact" aria-controls="tab" role="tab" data-toggle="tab">Ø§Ø·ÙØ§Ø¹Ø§Øª ØªÙØ§Ø³</a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content tab-content-info" >
                            <div role="tabpanel" class="tab-pane active" id="overview">
                                <div class="container-fluid bg-3 text-center name_box">    
                                  <div class="row">
                                    <div class="col-sm-4">
                                        <div class="contact_box">
                                            <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px"> 
                                            </img>
                                            <br/>
                                            <br/>
                                            <p class="text-center">Ø¹ÙÛ</p>
                                            <p class="text-center">Ø¹ÙÙÛ</p>
                                            <br/>
                                            <h4 class="text-center">ÙÙÙØ¯Ø³ Ú©Ø§ÙÙ¾ÛÙØªØ±</h4>
                                            <button type="submit" class="btn btn-primary">Ø¯Ø¹ÙØª Ø¨Ù ÙÙÚ©Ø§Ø±Û</button>
                                            <br/>
                                            <!--<a href="https://twitter.com" id="ci1">
                                                <div class="showhim">
                                                        <div class="showme">
                                                            <img src="images/twitter_icone_hover.png" alt="twitter" > 
                                                        </div>
                                                        <div class="ok">
                                                            <img src="images/twitter_icone.png" alt="twitter">
                                                        </div>
                                                </div>
                                            </a>
                                            <a href="https://facebook.com" id="ci2">
                                                <div class="showhim">
                                                        <div class="showme">
                                                            <img src="images/facebook_icone_hover.png" alt="facebook" > 
                                                        </div>
                                                        <div class="ok">
                                                            <img src="images/facebook_icone.png" alt="facebook">
                                                        </div>
                                                </div>
                                            </a>
                                            <a href="https://plus.google.com" id="ci3">
                                                <div class="showhim">
                                                        <div class="showme">
                                                            <img src="images/google_icone_hover.png" alt="google" > 
                                                        </div>
                                                        <div class="ok">
                                                            <img src="images/google_icone.png" alt="google">
                                                        </div>
                                                </div>
                                            </a>
                                            -->
                                            <br/>
                                  </div>
                                    </div>
                                     <h3 class="biog_text_color">Ø¯ÙØ±ÙÙØ§</h3><br>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="skills">
                                <div class="container-fluid bg-3 text-center name_box">    
                                  <div class="row">
                                    <div class="col-sm-4 ">
                                        <div class="contact_box">
                                            <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px"> 
                                            </img>
                                            <br/>
                                            <br/>
                                            <p class="text-center">Ø¹ÙÛ</p>
                                            <p class="text-center">Ø¹ÙÙÛ</p>
                                            <br/>
                                            <h4 class="text-center">ÙÙÙØ¯Ø³ Ú©Ø§ÙÙ¾ÛÙØªØ±</h4>
                                            <button type="submit" class="btn btn-primary">Ø¯Ø¹ÙØª Ø¨Ù ÙÙÚ©Ø§Ø±Û</button>
                                  </div>
                                    </div>
                                     <h3 class="biog_text_color">ÙÙØ§Ø±Øª ÙØ§</h3><br>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="workhistory">
                                <div class="container-fluid bg-3 text-center name_box">    
                                  <div class="row">
                                    <div class="col-sm-4">
                                        <div class="contact_box">
                                            <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px"> 
                                            </img>
                                            <br/>
                                            <br/>
                                            <p class="text-center">Ø¹ÙÛ</p>
                                            <p class="text-center">Ø¹ÙÙÛ</p>
                                            <br/>
                                            <h4 class="text-center">ÙÙÙØ¯Ø³ Ú©Ø§ÙÙ¾ÛÙØªØ±</h4>
                                            <button type="submit" class="btn btn-primary">Ø¯Ø¹ÙØª Ø¨Ù ÙÙÚ©Ø§Ø±Û</button>
                                  </div>
                                    </div>
                                     <h3 class="biog_text_color">Ø³ÙØ§Ø¨Ù Ú©Ø§Ø±Û</h3><br>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="education">
                                <div class="container-fluid bg-3 text-center name_box">    
                                  <div class="row">
                                    <div class="col-sm-4">
                                        <div class="contact_box">
                                            <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px"> 
                                            </img>
                                            <br/>
                                            <br/>
                                            <p class="text-center">Ø¹ÙÛ</p>
                                            <p class="text-center">Ø¹ÙÙÛ</p>
                                            <br/>
                                            <h4 class="text-center">ÙÙÙØ¯Ø³ Ú©Ø§ÙÙ¾ÛÙØªØ±</h4>
                                            <button type="submit" class="btn btn-primary">Ø¯Ø¹ÙØª Ø¨Ù ÙÙÚ©Ø§Ø±Û</button>
                                  </div>
                                    </div>
                                     <h3 class="biog_text_color">ØªØ­ØµÛÙØ§Øª</h3><br>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                  </div>
                                </div>
                                
                            </div>
                            <div role="tabpanel" class="tab-pane" id="contact">
                                <div class="container-fluid bg-3 text-center name_box">    
                                  <div class="row">
                                    <div class="col-sm-4">
                                        <div class="contact_box">
                                            <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px"> 
                                            </img>
                                            <br/>
                                            <br/>
                                            <p class="text-center">Ø¹ÙÛ</p>
                                            <p class="text-center">Ø¹ÙÙÛ</p>
                                            <br/>
                                            <h4 class="text-center">ÙÙÙØ¯Ø³ Ú©Ø§ÙÙ¾ÛÙØªØ±</h4>
                                            <button type="submit" class="btn btn-primary">Ø¯Ø¹ÙØª Ø¨Ù ÙÙÚ©Ø§Ø±Û</button>
                                  </div>
                                    </div>
                                     <h3 class="biog_text_color" >Ø±Ø§Ù ÙØ§Û Ø§Ø±ØªØ¨Ø§Ø·Û</h3><br>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div class="col-sm-4 biog_text_color"> 
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
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
              function setting() {
                window.location = "Freelance.html"
            }
        </script>

    </body>

</html>