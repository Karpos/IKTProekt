using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["login"] != null && (Session["type"].ToString() == "user"))
            {


                LinkButton1.Text = "Здраво " + Session["login"];
                LinkButton1.Visible = true;
                LinkButton2.Text = "Одлогирај се";

            }
            else
            {
                LinkButton1.Visible = false;
                LinkButton2.Text = "Логирај се";
                Response.Redirect("~/Pages/Login.aspx");
            }

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //User logs in 
            if (LinkButton2.Text == "Логирај се")
            {
                Response.Redirect("~/Pages/Login.aspxx");
            }
            else
            {
                //User logs out
                Session.Clear();
                Response.Redirect("~/Default.aspx");

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Pages/User/DefaultUser.aspx");


        }
    }
}