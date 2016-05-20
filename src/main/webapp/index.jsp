
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
    <body>
        <div>
    <div class="header">

        <div class="row borderheader headerbody">

            <div class=" top-margin">

                <div class="col-xs-4 col-sm-2 col-md-1 col-md-offset-1 navbar-left">
                    <img src="images/LOGO.jpg">
                </div> 

                <div class="col-xs-offset-1 col-xs-3 col-sm-5 col-md-5  navbar-brand">
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
                        <li><button class=" btn btn-success navbar-btn ptext" data-toggle="modal" data-target="#signIn">ورود</button></li>
                        <li><button class=" btn btn-danger navbar-btn ptext" data-toggle="modal" data-target="#signUp">عضویت</button></li>
                        <li><a class=" btn btn-info navbar-btn ptext" href="index.jsp">صفحه اصلی</a></li>
                    </ol>
                </div>

                <div class="modal" id="signUp" tabindex="-1" role="dialog1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <p class="page-title">
                                        ثبت نام کاربر جدید<br/>
                                        </p>
                                        <p class="headertext">
                                         جهت شروع مدل کاربری خود را مشخص کنید</p>
                                         <legend></legend>

                                        <div class="col-xs-3" style="text-align:center;">
                                            <img style="margin:auto;display:block; width: 60px; height: 75px;" src="images/boss.jpg" alt="">
                                            <button class="btn btn-primary submitstyle" data-toggle="modal" data-target="#signUpFreelancer">کارجو</button>
                                        </div>

                                        <div class="col-xs-1" style="text-align:center;">
                                            <div class="Or_divider">

                                            </div>
                                            <p class="Or_P">OR</p>
                                            <div class="Or_divider">

                                            </div>
                                        </div>

                                        <div class="col-xs-4" style="text-align:center;">
                                            <img style="margin:auto;display:block; width: 60px; height: 75px;" src="images/emp.jpg" alt="">
                                            <button class="btn btn-primary submitstyle" data-toggle="modal" data-target="#signUpClient">کارفرما</button>
                                        </div>

                                        <div class="col-xs-1" style="text-align:center;">
                                            <div class="Or_divider">

                                            </div>
                                            <p class="Or_P">OR</p>
                                            <div class="Or_divider">

                                            </div>
                                        </div>

                                        <div class="col-xs-3" style="text-align:center;">
                                            <img style="margin:auto;display:block; width: 60px; height: 75px;" src="images/Team.png" alt="">
                                            <button class="btn btn-primary text-capitalize submitstyle" data-toggle="modal" data-target="#signUpTeam">تیم</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>




                <div class="modal" id="signUpClient" tabindex="-2" role="dialog1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p class="page-title">
                                ثبت نام کارمندان<br/>
                                </p>
                                <p class="headertext">
                                اطلاعات کاربری</p>

                                <form class="form-horizontal" role="form">
                                    <legend></legend>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputName" placeholder="نام">
                                        </div>
                                         <label class="label-style control-label" for="inputName">نام:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputFamilyName" placeholder="نام خانوادگی">
                                        </div>
                                         <label class="label-style control-label" for="inputFamilyName">نام خانوادگی:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputEmail" placeholder="ایمیل">
                                        </div>
                                         <label class="label-style control-label" for="inputEmail">ایمیل:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputUsername" placeholder="نام کاربری">
                                        </div>
                                         <label class="label-style control-label" for="inputUsername">نام کاربری:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="password" class="form-control inputstyle2" id="inputPassword" placeholder="گذر واژه">
                                        </div>
                                         <label class="label-style control-label" for="inputPassword">گذر واژه:</label>
                                    </div>

                                    <p class="headertext">
                                    اطلاعات کاری</p>
                                    <legend> </legend>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputPassword" placeholder="تخصص">
                                        </div>
                                         <label class="label-style control-label" for="inputExpertise">تخصص:</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputPassword" placeholder="سوابق کاری">
                                        </div>
                                         <label class="label-style control-label" for="inputExperience">سوابق کاری:</label>
                                    </div>

                                    <button type="button" class="btn btn-primary submitstyle" onclick="getinEmployer()">ثبت نام</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="modal" id="signUpTeam" tabindex="-2" role="dialog1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p class="page-title">
                                ثبت نام تیم<br/>
                                </p>
                                <p class="headertext">
                                اطلاعات کاربری</p>

                                <form class="form-horizontal" role="form">
                                    <legend></legend>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputName" placeholder="نام">
                                        </div>
                                         <label class="label-style control-label" for="inputName">نام:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputFamilyName" placeholder="نام خانوادگی">
                                        </div>
                                         <label class="label-style control-label" for="inputFamilyName">نام خانوادگی:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputEmail" placeholder="ایمیل">
                                        </div>
                                         <label class="label-style control-label" for="inputEmail">ایمیل:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputUsername" placeholder="نام کاربری">
                                        </div>
                                         <label class="label-style control-label" for="inputUsername">نام کاربری:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="password" class="form-control inputstyle2" id="inputPassword" placeholder="گذر واژه">
                                        </div>
                                         <label class="label-style control-label" for="inputPassword">گذر واژه:</label>
                                    </div>

                                    <p class="headertext">
                                    اطلاعات کاری</p>
                                    <legend> </legend>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputPassword" placeholder="تخصص">
                                        </div>
                                         <label class="label-style control-label" for="inputExpertise">تخصص:</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputPassword" placeholder="سوابق کاری">
                                        </div>
                                         <label class="label-style control-label" for="inputExperience">سوابق کاری:</label>
                                    </div>

                                    <button type="button" class="btn btn-primary submitstyle" onclick="getinTeam()" >ثبت نام</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal" id="signUpFreelancer" tabindex="-2" role="dialog1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p class="page-title">
                                ثبت نام کارفرما<br/>
                                </p>
                                <p class="headertext">
                                اطلاعات کاربری</p>

                                <form class="form-horizontal" role="form">
                                    <legend></legend>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputName" placeholder="نام">
                                        </div>
                                         <label class="label-style control-label" for="inputName">نام:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputFamilyName" placeholder="نام خانوادگی">
                                        </div>
                                         <label class="label-style control-label" for="inputFamilyName">نام خانوادگی:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputEmail" placeholder="ایمیل">
                                        </div>
                                         <label class="label-style control-label" for="inputEmail">ایمیل:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputUsername" placeholder="نام کاربری">
                                        </div>
                                         <label class="label-style control-label" for="inputUsername">نام کاربری:</label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="password" class="form-control inputstyle2" id="inputPassword" placeholder="گذر واژه">
                                        </div>
                                         <label class="label-style control-label" for="inputPassword">گذر واژه:</label>
                                    </div>

                                    <p class="headertext">
                                    اطلاعات کاری</p>
                                    <legend> </legend>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputPassword" placeholder="تخصص">
                                        </div>
                                         <label class="label-style control-label" for="inputExpertise">تخصص:</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputPassword" placeholder="سوابق کاری">
                                        </div>
                                         <label class="label-style control-label" for="inputExperience">سوابق کاری:</label>
                                    </div>

                                    <button type="button" class="btn btn-primary submitstyle" onclick="getinFreelancer()">ثبت نام</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>




                <div class="modal" id="signIn" tabindex="-1" role="dialog1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <form class="form-group" action="EmployerLogin" method="post" id="formfield">
                                <p class="page-title">
                                ورود کاربران<br/>
                                </p>
                                <p class="headertext">
                                اطلاعات کاربری</p>
                                    
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputusername" name="inputusername" placeholder="نام کاربری">
                                        </div>
                                         <label class="label-style control-label" for="inputusername">نام کاربری:</label>
                                    
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="password" class="form-control inputstyle2" id="inputpassword" name="inputpassword" placeholder="گذر واژه">
                                        </div>
                                        <label class="label-style control-label" for="inputpassword">گذر واژه:</label>
                                        <a class="btn btn-warning  submitstyle" data-toggle="modal" data-target="#forgotPass">بازیابی رمز</a>
                                        <button type="submit" class="btn btn-primary submitstyle" value="ورود" id="submitBtn">ورود</button>
                                 </form>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="modal" id="forgotPass" tabindex="-2" role="dialog1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p class="page-title">
                                بازیابی رمز ورود<br/>
                                </p>
                                <p class="headertext">
                                :آدرس ایمیل خود را جهت بازیابی رمز خود وارد کنید</p>

                                    <div class="form-group">
                                        <div class="col-xs-9 col-sm-10">
                                            <input type="text" class="form-control inputstyle2" id="inputUsername" placeholder="ایمیل">
                                        </div>
                                         <label class="label-style control-label" for="inputUsername">ایمیل:</label>
                                    </div>

                                    <button type="button" class="btn btn-warning submitstyle">بازیابی</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

<script type="text/javascript">
    function getinTeam() 
    {
        window.location = "Team.jsp"
    }
</script>

<script type="text/javascript">
    function getinEmployer() 
    {
        window.location = "Employer.jsp"
    }
</script>

<script type="text/javascript">
    function getinFreelancer() 
    {
        window.location = "Freelance.jsp"
    }
</script>
            <div class="content">
                <div class="row">
                    <section class="slider">
                        <div class="carousel slid" id="featured" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#featured" data-slide-to="0" class="active"> </li> 
                                <li data-target="#featured" data-slide-to="1"> </li> 
                                <li data-target="#featured" data-slide-to="2"> </li> 
                                <li data-target="#featured" data-slide-to="3"> </li> 
                                <li data-target="#featured" data-slide-to="4"> </li> 
                            </ol>
                        
                            <div class="carousel-inner" style="height:40%">
                                <div class="item">
                                    <img src="images\slider_2.jpg" class="carousel-picture"/>
                                </div>
                                <div class="item active">
                                    <img src="images\slider_3.jpg" class="carousel-picture"/>
                                </div>
                                <div class="item">
                                    <img src="images\slider_4.jpg" class="carousel-picture"/>
                                </div>
                                <div class="item">
                                    <img src="images\slider_1.jpg" class="carousel-picture"/>
                                </div>
                                <div class="item">
                                    <img src="images\slider_6.jpg" class="carousel-picture"/>
                                </div>
                            </div>

                            <a href="#featured" class="left carousel-control" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>

                            <a href="#featured" class="right carousel-control" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </section>
                </div>

                <div class="row New">
                     <div class="col-sm-10 col-sm-offset-1">
                        <div class="col-sm-4 media news" style="margin-top:15px;">
                            <div class="media-body">
                                <h2 class="new-title media-heading"> تیتر</h2>
                                <p> الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی </p>

                                <div class="new-footer media-left">
                                    &raquo; <a>لینک</a>
                                </div>
                            </div>
                            <div class="media-left media-middle">
                                    <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px">
                            </div>     
                        </div>

                        <div class="col-sm-4 media news">
                            <div class="media-body">
                                <h2 class="new-title media-heading"> تیتر</h2>
                                <p> الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی </p>

                                <div class="new-footer media-left">
                                    &raquo; <a>لینک</a>
                                </div>
                            </div>
                            <div class="media-left media-middle">
                                    <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px">
                            </div>     
                        </div>


                        <div class="col-sm-4 media news">
                            <div class="media-body">
                                <h2 class="new-title media-heading"> تیتر</h2>
                                <p> الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی </p>

                                <div class="new-footer media-left">
                                    &raquo; <a>لینک</a>
                                </div>
                            </div>
                            <div class="media-left media-middle">
                                    <img src="images/Users-zendmaniacs-PortraitUrl_100.jpg" class="img-circle" alt="MyPicture" style="width:90px; height:74px">
                            </div>     
                        </div>


                    </div>
                </div>

                <div class="row landing-hero" style="margin-bottm:20px;">
                    <div class="container-fluid col-md-6 col-md-offset-3">
                        <h1 class="landing-hero-h1"> خوش آمدید <h1>
                        <hr/>
                        <h3 class="landing-hero-h3">
                            برترین کارجویان در خدمت برترین کارفرمایان.
                        </h3>
                        <button class="btn btn-danger landing-hero-button">عضویت </button>
                    </div>

                </div>


                <div class="row" style="margin-bottm:20px;">
                    <div class="Explen col-sm-10 col-sm-offset-1">
                        <div class="col-sm-4">
                            <div class=" panel panel-primary">
                                <div class="panel-heading"> <h2 class="panel-title"> تیتر</h2></div>
                                <div class="panel-body"> 
                                    <p> الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی
                                    </p>
                                </div>
                                <div class="panel-footer">
                                    &raquo; <a>لینک</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class=" panel panel-success">
                                <div class="panel-heading"> <h2 class="panel-title"> تیتر</h2></div>
                                <div class="panel-body"> 
                                    <p> الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی
                                    </p>
                                </div>
                                <div class="panel-footer">
                                    &raquo; <a>لینک</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class=" panel panel-info">
                                <div class="panel-heading"> <h2 class="panel-title"> تیتر</h2></div>
                                <div class="panel-body"> 
                                    <p> الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی الکی
                                    </p>
                                </div>
                                <div class="panel-footer">
                                    &raquo; <a>لینک</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <script type="text/javascript" src="include/footer-index.js"></script>
            </div>
            
        </div>
    </body>

</html>