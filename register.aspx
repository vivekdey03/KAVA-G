<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="KAVA_G.register" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <script src="userValidation.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#show_pass').click(function () {
                $('#txt_pass').attr('type', $(this).is(':checked') ? 'text' : 'password');
            });
        });
    </script>

    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Register to KAVA-G</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="main1.css" rel="stylesheet" media="all">
</head>

<body style="background:rgb(253, 183, 12)" style="background:url(images/finger-couple.jpg);">
    
    <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-heading"><h2 class="title">Register</h2></div>
                <div class="card-body">
                    
                    <form id="f1" runat="server">

                           
                              
                            

                         <div class="input-group">
                             <asp:TextBox ID="txt_firstName" placeholder="Name" runat="server" CssClass="input--style-1"></asp:TextBox >
                           
                        </div>
                       
                        
                           <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <asp:DropDownList runat="server" id="txt_gender">
                                            <asp:ListItem disabled="disabled" selected="selected" Value="0">Gender</asp:ListItem>
                                            <asp:ListItem Value="1">Male</asp:ListItem>
                                            <asp:ListItem Value="2">Female</asp:ListItem>
                                        
                                        </asp:DropDownList>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                      
                            
                            
                        
                        <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                         <asp:TextBox ID="txt_age" placeholder="Enter Your Age(in years)" runat="server" CssClass="input--style-1"></asp:TextBox >
                                    </div>
                                </div>
                            </div>

                         <div class="input-group">
                             <asp:TextBox ID="txt_address" placeholder="Address" runat="server" CssClass="input--style-1"></asp:TextBox >
                           
                        </div>

                         <div class="input-group">
                             <asp:TextBox ID="txt_city" placeholder="City" runat="server" CssClass="input--style-1"></asp:TextBox >
                           
                        </div>

                        <div class="input-group">
                             <asp:TextBox ID="txt_mobile" placeholder="Mobile Number" runat="server" CssClass="input--style-1"></asp:TextBox >
                           
                        </div>

                        <div class="input-group">
                             <asp:TextBox ID="txt_email" placeholder="Email ID" runat="server" CssClass="input--style-1"></asp:TextBox >
                           
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <asp:TextBox ID="txt_password" type="password" placeholder="Enter Password" runat="server" CssClass="input--style-1"></asp:TextBox >
              
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <asp:TextBox ID="txt_cpassword" type="password" placeholder="Confirm Password" runat="server" CssClass="input--style-1"></asp:TextBox >
              
                                </div>
                            </div>

                            </div>
                            
               
                           
                        
                        

                        
                        <div class="p-t-20">
                            <asp:Button CssClass="btn btn--radius btn--green" Text="Register" ID="btn_submit" runat="server" OnClick="btn_submit_Click" OnClientClick="return validate();" />
                               </div>
                        <asp:Label runat="server" ID="lbl_msg"></asp:Label>
                           <br />
             
                        <a href="login.aspx" class="link_existinguser">Already Have An Account ? Please Login</a>

                        
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>