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
    public partial class profile : System.Web.UI.Page
    {
        GlobalCS obj= new GlobalCS();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                try
                {
                    int U_id = Convert.ToInt16(Request.QueryString["id"]);
                    dt = obj.show_profile(U_id);
                    if (dt.Rows.Count > 0)
                    {

                        name.Text = dt.Rows[0]["f_name"].ToString();
                        age.Text = "Age: "+ dt.Rows[0]["Age"].ToString();
                        gender.Text = "Gender: " +dt.Rows[0]["gender"].ToString();
                        height.Text="Height: "+ dt.Rows[0]["height"].ToString();
                        religion.Text ="Religion: " +dt.Rows[0]["religion"].ToString();
                        caste.Text= "Caste: "+dt.Rows[0]["caste"].ToString();
                        job_profile.Text = "Job Profile: "+dt.Rows[0]["job_type"].ToString();

                        address.Text = "Address: " +dt.Rows[0]["addr"].ToString();
                        city.Text = "City: "+dt.Rows[0]["city"].ToString();

                        email.Text = "Email_ID: " +dt.Rows[0]["email_id"].ToString();

                        mobile.Text = "Mobile Number: "+dt.Rows[0]["mobile"].ToString();
                       
                       
                        


                        string f_name = dt.Rows[0]["dp"].ToString();
                        img_portfolioImage.ImageUrl = "~/photo/" + f_name;
                    }

                        
                    else
                    {
                        name.Text = "data not found";
                    }

                   
                }
                catch (Exception ex)
                {
                    throw ex;
                }
               
            }
        }
        }
    }
