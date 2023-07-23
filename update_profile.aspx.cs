using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KAVA_G.app_code;
using System.Data;

namespace KAVA_G
{
    public partial class update_profile : System.Web.UI.Page
    {
        GlobalCS obj = new GlobalCS();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    dt = obj.show_profile(Convert.ToInt32(Session["uid"]));


                    if (dt.Rows.Count > 0)
                    {


                        up_name.Text = dt.Rows[0]["f_name"].ToString();

                        up_age.Text = dt.Rows[0]["Age"].ToString();
                        up_gender.SelectedValue = dt.Rows[0]["gender"].ToString();
                        up_height.Text = dt.Rows[0]["height"].ToString();
                        up_religionn.SelectedValue = dt.Rows[0]["religion"].ToString();
                        up_castee.SelectedValue = dt.Rows[0]["caste"].ToString();
                        up_job.Text = dt.Rows[0]["job_type"].ToString();

                        up_address.Text = dt.Rows[0]["addr"].ToString();
                        up_city.Text = dt.Rows[0]["city"].ToString();

                        up_email.Text = dt.Rows[0]["email_id"].ToString();

                        up_mobile.Text = dt.Rows[0]["mobile"].ToString();


                        string profile_photo = dt.Rows[0]["dp"].ToString();
                        displayPic.ImageUrl = "~/photo/" + profile_photo;

                        


                        //string f_name = dt.Rows[0]["portfolio_image"].ToString();
                        //img_portfolioImage.ImageUrl = "~/images/portfolio/" + f_name;
                    }
                    else
                    {

                    }
                }

                catch (Exception ex)
                {
                    throw ex;
                }
            }

        }

        protected void update_click1(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Session["uid"]);
            string fName = up_name.Text;
            string gender = up_gender.SelectedValue;
            int age =  Convert.ToInt32(up_age.Text);
            string addr = up_address.Text;
            string city = up_city.Text;
            string mobile = up_mobile.Text;
            string email = up_email.Text;
            string height = up_height.Text;
            string job = up_job.Text;
            string castte = up_castee.SelectedValue;
            string profilePhoto = "";
            string religion = up_religionn.SelectedValue;
            

            if (FileUpload1.HasFile)
            {
                profilePhoto = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/photo/" + profilePhoto));
            }

            int d = obj.register_add(userid, fName, gender, age, addr, city, mobile, email, "", "", height, job, castte, profilePhoto, religion, "update");
            if (d > 0)
            {
                Response.Redirect("index.aspx");
            }
            else { }

        }

    }
}


