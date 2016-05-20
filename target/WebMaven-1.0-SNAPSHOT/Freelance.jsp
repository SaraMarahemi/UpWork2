
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
    <script>
         function EditEmployeeInfo(){
                $.ajax({
                    type: "POST",
                    url: "EmployeeEditInfo",
                    dataType: 'json',
                    data: {EmployeeName: document.getElementById("EmployeeName").value ,
                           EmployeeFamilyName: document.getElementById("EmployeeFamilyName").value,
                           EmployeeUserName: document.getElementById("EmployeeUserName").value,
                           EmployeePassword: document.getElementById("EmployeePassword").value,
                           EmployeeSkill: document.getElementById("EmployeeSkill").value,
                           EmployeeResume: document.getElementById("EmployeeResume").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        alert("has reached"+data.returnValue);
                        document.getElementById("EmployeeName").value = data.returnValue;
                    }
                });
            }
            function SendRequest(){
                $.ajax({
                    type: "POST",
                    url: "EmployeeRequestHandler",
                    dataType: 'json',
                    data: {EmployerName: document.getElementById("EmployerName").value ,
                           RequestExplantion: document.getElementById("RequestExplantion").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("EmployerName").value = data.returnValue;
                    }
                });
            }
            function SearchForEmployer()
            {
                $.ajax({
                    type: "POST",
                    url: "EmployeeSearchHandler",
                    dataType: 'json',
                    data: {SpecialField: document.getElementById("SpecialField").value ,
                           CompanyOrEmployer: document.getElementById("CompanyOrEmployer").value,
                           ResumeInfo: document.getElementById("ResumeInfo").value,
                           CompanyAddress: document.getElementById("CompanyAddress").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("SpecialField").value = data.returnValue;
                    }
                });
            }
            function EmplyeePrivacyManager(){
                $.ajax({
                    type: "POST",
                    url: "EmployeePrivacyManager",
                    dataType: 'json',
                    data: {NameRadio: document.getElementById("NameRadio").checked ,
                           FamilyNameRadio: document.getElementById("FamilyNameRadio").checked,
                           EmailRadio: document.getElementById("EmailRadio").checked,
                           UserNameRadio: document.getElementById("UserNameRadio").checked,
                           SpecialFieldRadio: document.getElementById("SpecialFieldRadio").checked
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        alert("has reached"+data.returnValue);
                        
                    }
                });
            }
            function FindEmail(){
                $.ajax({
                    type: "POST",
                    url: "EmployeeFindEmailHandler",
                    dataType: 'json',
                    data: {RefindEmail: document.getElementById("RefindEmail").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("RefindEmail").value = data.returnValue;
                    }
                });
            }
            function Subscribe(){
                 $.ajax({
                    type: "POST",
                    url: "EmployeeSubscribe",
                    dataType: 'json',
                    data: {FindEmployerName: document.getElementById("FindEmployerName").value
                          },
                    success: function (data, textStatus, jqXHR)  
                    {
                        //alert("has reached"+data.returnValue);
                        document.getElementById("FindEmployerName").value = data.returnValue;
                    }
                });
            }
            
    </script>
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


            <div class="row" style="margin-top:55px;">
                
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    
                </div>

                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active alltext">
                                <a id="a_link" href="#home" aria-controls="home" role="tab" data-toggle="tab">ویرایش</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#tab" aria-controls="tab" role="tab" data-toggle="tab">ارسال درخواست</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#search" aria-controls="tab" role="tab" data-toggle="tab">جستجو</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#privacy" aria-controls="tab" role="tab" data-toggle="tab">حریم شخصی</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#recover" aria-controls="tab" role="tab" data-toggle="tab">بازیابی ایمیل</a>
                            </li>
                            <li role="presentation" class="alltext">
                                <a id="a_link" href="#subscribe" aria-controls="tab" role="tab" data-toggle="tab">اشتراک</a>
                            </li>
                        </ul>
                    
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="EmployeeName" placeholder="نام">
                                                <input type="text" class="form-control inputstyle3" id="EmployeeFamilyName" placeholder="نام خانوادگی">
                                                <input type="text" class="form-control inputstyle3" id="EmployeeUserName" placeholder="نام کاربری">
                                                <input type="text" class="form-control inputstyle3" id="EmployeePassword" placeholder="گذر واژه">
                                                <input type="text" class="form-control inputstyle3" id="EmployeeSkill" placeholder="تخصص">
                                                <input type="text" class="form-control inputstyle3" id="EmployeeResume" placeholder="سوابق کاری">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="EditEmployeeInfo()" >ویرایش</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="EmployerName" placeholder="نام کاربری کارفرما">
                                                <input type="text" class="form-control inputstyle3" id="RequestExplantion" placeholder="توضیحات">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="SendRequest()">ارسال</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="search">
                                <div class="row">
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext" style="text-align:center;">
                                        
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="SpecialField" placeholder="تخصص">
                                                <input type="text" class="form-control inputstyle3" id="CompanyOrEmployer" placeholder="شرکت یا کارفرما مورد نظر">
                                                <input type="text" class="form-control inputstyle3" id="ResumeInfo" placeholder="سابقه ی فعالیت ">
                                                <input type="text" class="form-control inputstyle3" id="CompanyAddress" placeholder="مکان شرکت/کارفرما">
                                            </div>
                                        
                                            
                                    
                                            <button type="button" class="btn btn-primary" onclick="SearchForEmployer()">جستجو</button>
                                        </form>

                                    </div>

                                    
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="privacy">
                                <form action="" method="POST" role="form">
                                        
                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                            <label><input type="radio" name="optradio1" id="NameRadio" >نمایش داده شود</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio1">نمایش داده نشود</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class="">نام</p>

                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio2" id="FamilyNameRadio" >نمایش داده شود</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio2">نمایش داده نشود</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class=""> نام خانوادگی</p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio3" id="EmailRadio" >نمایش داده شود</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio3">نمایش داده نشود</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class=""> ایمیل</p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio4" id="UserNameRadio" >نمایش داده شود</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio4">نمایش داده نشود</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class=""> نام کاربری</p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 alltext " style="text-align:center;">
                                        
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio5" id="SpecialFieldRadio" >نمایش داده شود</label>
                                        </div>
                                        <div class="radio-inline ">
                                          <label><input type="radio" name="optradio5">نمایش داده نشود</label>
                                        </div>
                                        

                                    </div>

                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 alltext " style="text-align:center;">
                                        
                                        <p class="">تخصص</p>

                                    </div>
                                     <button type="button" class="btn btn-primary" onclick="EmplyeePrivacyManager()">ذخیره</button>
                                    
                                </div>
                                    
                                
                                    </form>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="recover">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext"  style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="RefindEmail" placeholder="ایمیل جهت بازیابی">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="FindEmail()">بازیابی</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="subscribe">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 alltext"  style="text-align:center;">
                                        <form action="" method="POST" role="form">
                                            
                                        
                                            <div class="form-group">
                                                
                                                <input type="text" class="form-control inputstyle3" id="FindEmployerName" placeholder="نام کاربری کارفرما جهت اشتراک">
                                            </div>
                                        
                                            
                                        
                                            <button type="button" class="btn btn-primary" onclick="Subscribe()">بازیابی</button>
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
                window.location = "index.jsp"
            }
            function showProfile(){
                window.location = "FreelanceProfile.jsp"
            }
            

        </script>

    </body>

</html>