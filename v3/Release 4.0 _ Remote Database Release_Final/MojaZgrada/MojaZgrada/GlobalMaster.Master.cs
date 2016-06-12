using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada
{
    public partial class GlobalMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                if (Session["type"].ToString() == "admin")
                {
                    Response.Redirect("~/Pages/Admin/DefaultAdmin.aspx");
                }
                else if (Session["type"].ToString() == "manager")
                {
                    Response.Redirect("~/Pages/Manager/DefaultManager.aspx");
                }
                else if (Session["type"].ToString() == "user")
                {
                    Response.Redirect("~/Pages/User/DefaultUser.aspx");
                }
            }
            else
            {
                LinkButton1.Visible = false;
                LinkButton2.Text = "Логирај се";
                  //     Response.Redirect("~/Pages/Login.aspx");
            }

          
            }
        



        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //User logs in 
            if (LinkButton2.Text == "Логирај се")
            {
                   Response.Redirect("/Pages/Login.aspx");
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

            if (Session["type"].ToString() == "admin")
            {
                Response.Redirect("~/Pages/Admin/DefaultAdmin.aspx");
            }
            else if (Session["type"].ToString() == "manager")
            {
                Response.Redirect("~/Pages/Manager/DefaultManager.aspx");
            }
            else if (Session["type"].ToString() == "user")
            {
                Response.Redirect("~/Pages/User/DefaultUser.aspx");
            }


        }
    }
}
