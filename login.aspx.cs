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
    public partial class login : System.Web.UI.Page
    {
        GlobalCS obj = new GlobalCS();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {

                string user_id = String.Empty;
                string password = txt_password.Text;
                string mobile = String.Empty;

                if (txt_email.Text.Contains("@"))
                {
                    user_id = txt_email.Text;

                }
                else
                {

                    mobile = txt_email.Text;
                }
                DataTable dt = obj.login(user_id, password, mobile);
                int c = dt.Rows.Count;

                if (c > 0)
                {
                    //Session["uid"] = Convert.ToInt16(dt.Rows[0]["userID"]);
                    Session["uid"] = (dt.Rows[0]["userId"]);

                    Response.Redirect("index.aspx");
                }
                else
                {
                    Label1.Text = "Invalid Username or Password.";
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}