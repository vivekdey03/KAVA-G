<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KAVA_G.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>welcome to KAVA-G</title>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        @import url(Style.css);

    </style>
    <script type="text/javascript">
        function p() {
            window.alert("Hello abul");
            div = document.getElementById("msg");

            div.innerHTML = "";
        }
    </script>
</head>
<body>
    <form id="f1" runat="server">
    <div class="fluid-container">
        <nav class="navbar navbar-style">

            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target="#micon">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.aspx">
                        <span id="title" style="color:blue; font-family:monospace; font-size:40px; display:inline-block; background:linear-gradient(to right,red,blue,yellow,green); 
                        -webkit-text-fill-color:transparent; -webkit-background-clip:text;">KAVA-G</span>
                        <asp:image ID="Image1" runat="server" class="logo" src="" /></a>

                </div>
                <div class="collapse navbar-collapse" id="micon">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Home</a></li>
                  <%--  <li><a href="#">Profile</a></li>--%>
<%--                    <li><a href="#">Match</a></li>--%>
<%--                    <li><a href="#">About Us</a></li>--%>
                    <li><a href="login.aspx">Logout</a></li>
                </ul>
                    </div>
            </div>
        </nav>
      

        <div class="row">

           <div class="profile col-sm-4" style="background-color:rgb(250, 234, 144);height:90vh">
               <div class="row">
                   

                    
                     


                   <div class="" style="margin-left:30%; margin-top:5%; width:200px;height:200px" ><asp:Image runat="server" ID="pro_img"  style="border-radius:50%; width:100%;height:100%"/></div>
               </div>

                <div class="row">

               <div style="text-align:center; font-size:26PX;"> 
                   <asp:Label runat="server" ID="name" ></asp:Label>
                

               </div>
                </div><br /><hr />
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="gender" ></asp:Label></div>
               </div>

               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="age" ></asp:Label></div>
               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="job" ></asp:Label></div>
               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="height"></asp:Label></div>

               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="address" ></asp:Label></div>

               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17PX; margin-top:1%;"><asp:Label runat="server" ID="city" ></asp:Label></div>

               </div>
               <div class="row">
                   <div class="col-sm-12"><asp:Label style="font-size:17px; margin-top:1%;" runat="server" ID="religion" ></asp:Label></div>

               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="caste" ></asp:Label></div>

               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="email" ></asp:Label></div>

               </div>
               <div class="row">
                   <div class="col-sm-12" style="font-size:17px; margin-top:1%;"><asp:Label runat="server" ID="mobile" ></asp:Label></div>

               </div>

               <asp:Button ID="update" runat="server" Text="Update Profile" onchange="p()" OnClick="update_Click" />
              
                              </div>
               


             <div class="search col-sm-3" style="background-color:rgb(238, 235, 235);height:90vh"><br />
                 <h4 style="font-family:inherit; margin-left:10%">FIND YOUR PARTNER BY:</h4>
                 
                 <asp:DropDownList style="height:40px; width:80%; margin-left:10%; margin-top:2%;" runat="server" ID="drp_gender" >
                     <asp:listitem disabled="disabled" selected="selected">Gender</asp:listitem>
                     <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                    
                 </asp:DropDownList>

                 <asp:DropDownList runat="server" ID="drp_down_religion" style="height:40px; width:80%; margin-left:10%; margin-top:2%;" >
                       <asp:listitem disabled="disabled" selected="selected">Religion</asp:listitem>
                     <asp:ListItem>Hinduism</asp:ListItem>
                     <asp:ListItem>Islam</asp:ListItem>
                     <asp:ListItem>Gnosticism</asp:ListItem>
                     <asp:ListItem>Christianity</asp:ListItem>
                     <asp:ListItem>Buddhism</asp:ListItem>
                     <asp:ListItem>Jainism</asp:ListItem>
                     <asp:ListItem>Judaism</asp:ListItem>
                         <asp:ListItem>Sikhism</asp:ListItem>
                     
                 </asp:DropDownList>

                 <asp:DropDownList style="height:40px; width:80%; margin-left:10%; margin-top:2%;" runat="server" ID="drp_down_caste" Visible="false"  >
                      <asp:listitem disabled="disabled" selected="selected">Caste</asp:listitem>
                     <asp:ListItem>Bengali</asp:ListItem>
                     <asp:ListItem>Odiya</asp:ListItem>
                     <asp:ListItem>Bihari</asp:ListItem>
                     <asp:ListItem>Marwari</asp:ListItem>
                     <asp:ListItem>Punjabi</asp:ListItem>
                     <asp:ListItem>Tamil</asp:ListItem>
                     <asp:ListItem>Kannad</asp:ListItem>
                     <asp:ListItem>Madrasi</asp:ListItem>
                 </asp:DropDownList>
                 <asp:TextBox style="height:40px; width:80%; margin-left:10%; margin-top:2%;" ID="txt_age" Visible="false" runat="server" placeholder="Age"></asp:TextBox>
                 <span style="font-size:25px; color:red;"></span>
                 <%--<asp:TextBox style="height:40px; width:80%; margin-left:10%; margin-top:2%;" ID="txt_job" Visible="false" runat="server" placeholder="Job Profile"></asp:TextBox>
                 <asp:TextBox style="height:40px; width:80%; margin-left:10%; margin-top:2%;" ID="txt_height" Visible="false" runat="server" placeholder="Height"></asp:TextBox>
                 
                 <asp:TextBox style="height:40px; width:80%; margin-left:10%; margin-top:2%;" ID="txt_location" Visible="false" runat="server" placeholder="Location"></asp:TextBox>--%>

                  
                  

                <br /><br />

                 

                <a href="#"><asp:Button class="btn-primary btn-success btn" style="height:50px; width:25%; margin-left:35%;" runat="server" ID="btn_search" Text="Search" OnClick="btn_search_Click1" /></a>
             </div>


             <div class="sug col-sm-5" style="background-color:rgb(238, 235, 240); margin-left:2%;  height:90vh; overflow-y:scroll;">
                  
                 
                 <asp:Repeater runat="server" ID="rpt_profile" OnItemCommand="rpt_shops_ItemCommand" EnableViewState="true">
                     <ItemTemplate>
                

                 <div class="msg" id="msg" style="margin-left:5%; border-radius:20px; height:250px; width:90%; margin-top:2%; background-color:rgb(253, 159, 116)">
                     <ul class='list'><a href="#" style="text-decoration: none;"><li>
                     <div class="row">
                         <div class="col-sm-6" style="float:left;"><asp:Label runat="server" style=" margin-left:10px;margin-top:20px;font-size:20px;color:white" Text='<%# Eval("f_name ") %>'></asp:Label></div>
                         <div class="col-sm-6" style="float:right; height:100px;width:100px; border-radius:50%; background-color:black;margin-right:20px;overflow:hidden">

                          

                            <div style="width:100%; height:100%; background-size:100% 100%;"><img  style="width:100%; height:100%; background-size:100% 100%;"  src='photo/<%# Eval("dp ") %>'  />
                         </div> 
                         </div>
                     
                     </div>
                     <hr />
                     <span style="margin-left:2%;">Age : </span>
                     <asp:Label runat="server" style="margin-left:10px;margin-top:20px;font-size:16px;color:white;" Text='<%# Eval("Age ") %>' ></asp:Label><br />
                     <span style="margin-left:2%;">Gender : </span>
                     <asp:Label runat="server" style=" margin-left:10px;margin-top:20px;font-size:16px;color:white" Text='<%# Eval("gender ") %>'></asp:Label><br />
                     <span style="margin-left:2%;">Job : </span>
                     <asp:Label runat="server" style=" margin-left:10px;margin-top:20px;font-size:16px;color:white" Text='<%# Eval("job_type ") %>'></asp:Label><br />
                     <span style="margin-left:2%;">Address : </span>
                     <asp:Label runat="server" style=" margin-left:10px;margin-top:20px;font-size:16px;color:white" Text='<%# Eval("city ") %>'></asp:Label>

                    
                     <asp:Button class="btn-primary btn-success btn" runat="server" style="float:right;margin-right:10px; margin-top:-5%;" Text="View Profile" CommandArgument='<%# Eval("userId") %>' OnClick="viewProfile_Click" />
                     




  </div>

                     </ItemTemplate>
                 </asp:Repeater>
                 <asp:Label runat="server" ID="lbl_msg"></asp:Label>

             </div>

                       

        </div>
        

    </div>
       
  

 
    </form>
</body>

    
</html>
