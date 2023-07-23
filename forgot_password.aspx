<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_password.aspx.cs" Inherits="KAVA_G.forgot_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>forgot password
    </title>
  <style>      @import url("main1.css");
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="maindiv">
       <br /><h3 class="heading">reset password</h3>
      
      <br /><br />  <p style="font-family: monospace;
    margin-left: 4%;
    font-weight:300;
    color:whitesmoke; ">Enter the email address or mobile number linked with your account.</p> 
        <asp:TextBox  ID="txt_reset" placeholder=" Email address or mobile number"  runat="server" CssClass="field"></asp:TextBox>
        <br />
        <br />
<asp:Button class="btn-primary btn-success btn" style="margin-left:5%; background-color:yellow; color:gray" runat="server" ID="reset" Text="continue"  />   
   <br /><br />
        </div>
    </form>
</body>
</html>
