using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using KAVA_G.app_code;

namespace KAVA_G
{
    public partial class register : System.Web.UI.Page
    {
        GlobalCS obj = new GlobalCS();
        DataTable dt = new DataTable();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int d=0;
            try
            {
                int userId = 1;
                string f_name = txt_firstName.Text;
               
                string gender = txt_gender.Text;
                int age = Convert.ToInt16(txt_age.Text);
                string address = txt_address.Text;
                string city = txt_city.Text;
                string mobile = txt_mobile.Text;
                string email = txt_email.Text;
                string pass = txt_password.Text;
                string Cpass = txt_cpassword.Text;
                string height = string.Empty;
                string job = string.Empty;
                string caste = string.Empty;
                string dp = string.Empty;
                string religion = string.Empty;

                if (pass == Cpass)
                {
                    d = obj.register_add(userId, f_name, gender, age, address, city, mobile, email, pass, Cpass,"","","","","","insert");
                    if (d > 0)
                    {
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        lbl_msg.Text = "Account can't be created because of insufficient data";
                    }
                }
                else
                {
                    lbl_msg.Text = "Please enter correct password";
                    txt_cpassword.Text = "";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}