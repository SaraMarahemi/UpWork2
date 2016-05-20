<%-- 
    Document   : Employer
    Created on : May 19, 2016, 7:57:49 PM
    Author     : Sarah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                                        <input type="text" class="form-control ptext" placeholder="جستجو">
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="col-xs-2 col-lg-2 col-lg-offset-1 navbar-right" style="margin-right:0px;">
                            <ol class="breadcrumb" style="background-color:white">
                                <li><button class=" btn btn-success navbar-btn ptext" onclick="exit()">خروج</button></li>
                                 <li><a class=" btn btn-info navbar-btn ptext" onclick="showProfile()" >پروفایل</a></li>
                            </ol>
                        </div>

                        


                        
                    </div>
                </div>
            </div>

            <script>
                function StoreCompanyInfo(){
                $.ajax({
                    type: "POST",
                    url: "EmployerCompanyInfo",
                    dataType: 'json',
                    data: {CompanyName: document.getElementById("CompanyName").value ,
                           CompanyURL: document.getElementById("CompanyURL").value,
                           CompanyAddress: document.getElementById("CompanyAddress").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("CompanyName").value = data.returnValue;
                    }
                });
            }
                function SendJobOffer(){
                   $.ajax({
                    type: "POST",
                    url: "EmployerJobOfferHandler",
                    dataType: 'json',
                    data: {JobName: document.getElementById("JobName").value ,
                           JobSalary: document.getElementById("JobSalary").value,
                           JobType: document.getElementById("JobType").value,
                           JobExperiment: document.getElementById("JobExperiment").value,
                           JobSkills: document.getElementById("JobSkills").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("JobName").value = data.returnValue;
                    }
                }); 
                }
                function SearchForEmployee(){
                    $.ajax({
                    type: "POST",
                    url: "EmployerSearchHandler",
                    dataType: 'json',
                    data: {SpecialSkill: document.getElementById("SpecialSkill").value ,
                           JobField: document.getElementById("JobField").value,
                           JobInterest: document.getElementById("JobInterest").value,
                           ResumeDate: document.getElementById("ResumeDate").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("JobField").value = data.returnValue;
                    }
                }); 
                }
                function RequestForOutSourcing(){
                    $.ajax({
                    type: "POST",
                    url: "EmployerOutSourceHandler",
                    dataType: 'json',
                    data: {ProjectName: document.getElementById("ProjectName").value ,
                           ProjectTime: document.getElementById("ProjectTime").value,
                           ProjectBenefit: document.getElementById("ProjectBenefit").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("ProjectName").value = data.returnValue;
                    }
                }); 
                }
            </script>
            <div class="row" style="margin-top:55px;">
                
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    
                </div>

                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active alltext">
                                <a id="a_link" href="#home" aria-controls="home" role="tab" data-toggle="tab">صفحه شرکت</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#tab" aria-controls="tab" role="tab" data-toggle="tab">اگهی استخدام</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#search" aria-controls="tab" role="tab" data-toggle="tab">جستجو</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#privacy" aria-controls="tab" role="tab" data-toggle="tab">برون سپاری</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#profile" aria-controls="tab" role="tab" data-toggle="tab">پروفایل</a>
                            </li>
                            
                        </ul>
                    
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            <div class="form-group">
                                                <input type="text" class="form-control inputstyle3" id="CompanyName" placeholder="نام شرکت">
                                                <input type="text" class="form-control inputstyle3" id="CompanyURL" placeholder="وبگاه شرکت">
                                                <input type="text" class="form-control inputstyle3" id="CompanyAddress" placeholder="ادرس شرکت">   
                                            </div>
                                            <button type="button" class="btn btn-primary" onclick="StoreCompanyInfo()">ذخیره</button>
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
                                                
                                                <input type="text" class="form-control inputstyle3" id="JobName" placeholder="عنوان شغل">
                                                <input type="text" class="form-control inputstyle3" id="JobSalary" placeholder="میزان درامد">
                                                <input type="text" class="form-control inputstyle3" id="JobType" placeholder="نوع شغل">
                                                <input type="text" class="form-control inputstyle3" id="JobExperiment" placeholder="توضیحات">
                                                <input type="text" class="form-control inputstyle3" id="JobSkills" placeholder="مهارت مورد نیاز">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="SendJobOffer()">ارسال</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="search">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="SpecialSkill" placeholder="تخصص">
                                                <input type="text" class="form-control inputstyle3" id="JobField" placeholder="نوع شغل">
                                                <input type="text" class="form-control inputstyle3" id="JobInterest" placeholder="سلبقه ی کار ">
                                                <input type="text" class="form-control inputstyle3" id="ResumeDate" placeholder="زمان ارسال رزومه">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="SearchForEmployee()">جستجو</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="privacy">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">

                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="ProjectName" placeholder="عنوان پروژه">
                                                <input type="text" class="form-control inputstyle3" id="ProjectTime" placeholder="زمان پروژه">
                                                <input type="text" class="form-control inputstyle3" id="ProjectBenefit" placeholder="سود پروژه">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="RequestForOutSourcing()">ایجاد درخواست</button>
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
                                                  <button type="submit" onclick="showProfile()" class="btn btn-primary" style="margin-top: 40px;margin-bottom: 40px;width:100%;">ویرایش پروفایل</button>
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
                window.location = "index.jsp"
            }
             function showProfile(){
                window.location = "EmployerProfile.jsp"
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
