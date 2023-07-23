<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update_profile.aspx.cs" Inherits="KAVA_G.update_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Your Profile</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   <style>
        @import url("main1.css");
   </style>
    <script type="text/javascript">
        function previewFile() {
            var preview = document.getElementById('imgInsidePhoto'); //selects the query named img
            var file = document.querySelector('input[type=file]').files[0]; //sames as here
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file); //reads the data as a URL
            } else {
                preview.src = "";
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="maindiv">
        <br /><h3 class="heading">Update Your Profile</h3>

        
         <br /><br /> <div class="photo">

             
         
                 <asp:Image  ID="displayPic" runat="server"  AlternateText="set portfolio picture" style="width:100%; height:100%; "></asp:Image></div><br />
                     
                     <asp:FileUpload ID="FileUpload1" runat="server" onchange="previewFile()"   style="margin-left:33%" /><br /><br />


        



        




        <span class="fieldname">Name : </span><br />
      <asp:TextBox class="field" runat="server" ID="up_name"></asp:TextBox><br /><br />

        <span class="fieldname">Gender : </span><br />
        <asp:DropDownList runat="server" id="up_gender" class="field">
                                            <asp:ListItem disabled="disabled" selected="selected">Gender</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        
                                        </asp:DropDownList><br /><br />

         <span class="fieldname">Age: </span><br />
       <asp:TextBox class="field" runat="server" ID="up_age"></asp:TextBox><br /><br />

         <span class="fieldname">Job Profile : </span><br />
        <asp:TextBox class="field" runat="server" ID="up_job"></asp:TextBox><br /><br />

         <span class="fieldname">Height(in cm) : </span><br />
        <asp:TextBox class="field" runat="server" ID="up_height"></asp:TextBox><br /><br />

         <span class="fieldname">Address : </span><br />
        <asp:TextBox class="field" runat="server" ID="up_address"></asp:TextBox><br /><br />

         <span class="fieldname">City : </span><br />
        <asp:TextBox class="field" runat="server" ID="up_city"></asp:TextBox><br /><br />

         <span class="fieldname" >Religion : </span><br />

       
        <asp:DropDownList runat="server" id="up_religionn" class="field">
                     <asp:listitem disabled="disabled" selected="selected">Religion</asp:listitem>
                     <asp:ListItem>Hinduism</asp:ListItem>
                     <asp:ListItem>Islam</asp:ListItem>
                     <asp:ListItem>Gnosticism</asp:ListItem>
                     <asp:ListItem>Christianity</asp:ListItem>
                     <asp:ListItem>Buddhism</asp:ListItem>
                     <asp:ListItem>Jainism</asp:ListItem>
                     <asp:ListItem>Judaism</asp:ListItem>
                         <asp:ListItem>Sikhism</asp:ListItem>
                                        </asp:DropDownList><br /><br />

         <span class="fieldname">Caste : </span><br />
        <asp:DropDownList  runat="server" ID="up_castee" class="field" >
                      <asp:listitem disabled="disabled" selected="selected">Caste</asp:listitem>
                     <asp:ListItem>Bengali</asp:ListItem>
                     <asp:ListItem>Odiya</asp:ListItem>
                     <asp:ListItem>Bihari</asp:ListItem>
                     <asp:ListItem>Marwari</asp:ListItem>
                     <asp:ListItem>Punjabi</asp:ListItem>
                     <asp:ListItem>Tamil</asp:ListItem>
                     <asp:ListItem>Kannad</asp:ListItem>
                     <asp:ListItem>Madrasi</asp:ListItem>
                 </asp:DropDownList><br /><br />

         <span class="fieldname">EmailId : </span><br />
        <asp:TextBox class="field" runat="server" ID="up_email"></asp:TextBox><br /><br />

         <span class="fieldname">Mobile No. : </span><br />
        <asp:TextBox class="field" runat="server" ID="up_mobile"></asp:TextBox><br /><br />

       

      

        <asp:Button class="btn-primary btn-success btn" style="margin-left:40%; background-color:yellow; color:gray" runat="server" ID="update" Text="Update" OnClick="update_click1"  />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
