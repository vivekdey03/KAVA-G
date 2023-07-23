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
    public partial class index : System.Web.UI.Page
    {
        GlobalCS obj = new GlobalCS();
        DataTable dt = new DataTable();
        string condition = string.Empty;
        string query = string.Empty;
        string fullQuery = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            int c = 0;
            if (!IsPostBack)
            {

                try
                {
                    int session= Convert.ToInt16(Session["uid"]);
                    DataTable dt = obj.show_profile(session);
                    c = dt.Rows.Count;
                    if (c > 0)
                    {
                        string f_name = dt.Rows[0]["dp"].ToString();
                        pro_img.ImageUrl = "~/photo/" + f_name;

                    }

                }
                catch (Exception ex)
                {
                    throw ex;
                }

                try
                {
                    DataTable dt = obj.show_allresults();
                    c = dt.Rows.Count;
                    if (c > 0)
                    {
                        rpt_profile.DataSource = dt;
                        rpt_profile.DataBind();

                    }

                }
                catch (Exception ex)
                {
                    throw ex;
                }


                try
                {

                    dt = obj.show_profile(Convert.ToInt32(Session["uid"]));
                    if (dt.Rows.Count > 0)
                    {
                        
                          

                        

                        name.Text = dt.Rows[0]["f_name"].ToString();
                        age.Text = "  Age: " + dt.Rows[0]["Age"].ToString();
                        gender.Text = "  Gender: " + dt.Rows[0]["gender"].ToString();
                        height.Text = "  Height: " + dt.Rows[0]["height"].ToString();
                        religion.Text = "  Religion: " + dt.Rows[0]["religion"].ToString();
                        caste.Text = "  Caste: " + dt.Rows[0]["caste"].ToString();
                        job.Text = "  Job Profile: " + dt.Rows[0]["job_type"].ToString();

                        address.Text = "  Address: " + dt.Rows[0]["addr"].ToString();
                        city.Text = "  City: " + dt.Rows[0]["city"].ToString();

                        email.Text = "  Email_ID: " + dt.Rows[0]["email_id"].ToString();

                        mobile.Text = "  Mobile Number: " + dt.Rows[0]["mobile"].ToString();





                      
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

        protected void update_Click(object sender, EventArgs e)
        {
            Response.Redirect("update_profile.aspx");
        }



        protected void viewProfile_Click(object sender, EventArgs e)
        {
            Button btn = (sender as Button);
            string id = btn.CommandArgument;
            Response.Redirect("profile.aspx?id="+id);
        }


        protected void rpt_shops_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "booknow")
            {
                Label lbluserId = (Label)e.Item.FindControl("lbluserId");
                int providerId = Convert.ToInt16(lbluserId.Text);

                Session["U_id"] = Convert.ToInt16(dt.Rows[0]["user_id"]);
                Response.Redirect("profile.aspx");
            }
        }



        protected void btn_search_Click1(object sender, EventArgs e)
        {


            try
            {


                string gender = string.Empty;

                if (drp_gender.SelectedValue == "Male")
                {
                    gender = "Male";
                }
                else
                {
                    gender = "Female";
                }

                string caste = drp_down_caste.SelectedValue;
                string religion = drp_down_religion.SelectedValue;
                string age = txt_age.Text;

                if (gender == "Gender" || religion == "Religion")
                {
                    txt_age.Visible = false;

                    drp_down_caste.Visible = false;
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Please fill the mandatory fields');</script>");
                }


                if (gender != "" && religion != "" && gender!="Gender" && religion!="Religion") 
                {
                

                    txt_age.Visible = true;

                    drp_down_caste.Visible = true;
                    


                    
                    if (txt_age.Text != "" && drp_down_caste.SelectedValue == "")
                    {
                        condition = condition + " AND age= '" + txt_age.Text+ "' ";
                    }
                    else if (txt_age.Text == "" && drp_down_caste.SelectedValue != "" && drp_down_caste.SelectedValue!="Caste")
                    {
                        condition = condition + " AND caste= '" + drp_down_caste.SelectedValue+ "' ";
                    }
                    else if (txt_age.Text != "" && drp_down_caste.SelectedValue=="Caste")
                    {
                        condition = condition + " AND age= '" + txt_age.Text + "' ";
                    }
                    else if (txt_age.Text != "" && drp_down_caste.SelectedValue != "" && drp_down_caste.SelectedValue != "Caste")
                    {
                        condition = condition + " AND age= '" + txt_age.Text + "' AND caste= '" + drp_down_caste.SelectedValue + "' ";
                    }
                    query = "select *  from register where gender='" + drp_gender.SelectedValue + "'" + " AND religion='" + drp_down_religion.SelectedValue + "'";
                             
                    if (condition != "")
                    {
                        fullQuery = query + condition;
                    }
                    else
                    {
                        fullQuery = query;
                    }
                    dt = obj.searching(fullQuery);


                    if (dt.Rows.Count > 0)
                    {


                        rpt_profile.DataSource = dt;
                        rpt_profile.DataBind();

                    }
                    else
                    {

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('No Records Found');</script>");

                    }
                }







               

                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
