<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="KAVA_G.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   <style>
       @import url(Style.css);
   </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
                         <div class="col-sm-4" style="background-color:blue; height:98vh">
                             <asp:Image runat="server"  id="img_portfolioImage" style="height:40%; width:55%; background-size:100% 100%; border-radius:50%; margin-left:25%; margin-top:35%;"></asp:Image>
                             <br />
                             <br />
                           <p style="text-align:center;">  <asp:Label runat="server" ID="name" style="font-size:40px;">Vivek Dey</asp:Label></p>
                         </div>
                         <div class="col-sm-8" style="background-color:green; height:98vh">
                             
                             <h2>personal info:</h2>
                             <hr />
                     <asp:Label ID="age" runat="server" Text="AGE" style="font-size:20px;"></asp:Label>    <br /><br />
                             <asp:Label class="details" style="font-size:20px;" ID="gender" runat="server" ></asp:Label> <br /><br />
                             <asp:Label class="details" ID="height" runat="server" style="font-size:20px;" ></asp:Label> <br /><br />
                             <asp:Label class="details" ID="religion" runat="server" style="font-size:20px;"></asp:Label> <br /><br />
                             <asp:Label class="details" ID="caste" runat="server" style="font-size:20px;"></asp:Label> <br /><br />

                             <asp:Label class="details" ID="job_profile" runat="server" style="font-size:20px;" ></asp:Label> <br /><br />
                             <asp:Label class="details" ID="address" runat="server" style="font-size:20px;" ></asp:Label> <br /><br />
                             <asp:Label class="details" ID="city" runat="server" style="font-size:20px;" ></asp:Label> <br /><br />
                             
                             <h3>contact:</h3>
                             <hr />
                             <asp:Label class="details" ID="email" runat="server" style="font-size:20px;" ></asp:Label> <br /><br />
                             <asp:Label class="details" ID="mobile" runat="server" style="font-size:20px;"></asp:Label> 

                               


                         </div>
        </div>
    </form>
</body>
</html>
