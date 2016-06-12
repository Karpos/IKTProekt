using MojaZgrada.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {

           Class.User user = ConnectionClass.LoginUser(txtLogin.Text, txtPassword.Text);
         
                if (user != null)
                {

                    //Store login variables in session
                    Session["login"] = user.Name;
                    Session["type"] = user.Type;
                    Session["email"] = user.Email;
                    Session["buildingNo"] = user.BuildingNumber;
                  Session["apt"] = user.NumberApt;

                // Session["stan"] = user.stan;

                //       lblError.Text = (string)user.Name + " " + (string)user.Type + " " + (string)user.Email + " " + user.BuildingNumber;
                if (Session["type"].ToString() == "admin")
                    {
                    // lblError.Text = "E admin";
                          Response.Redirect("~/Pages/Admin/DefaultAdmin.aspx");
                }
                    else if (Session["type"].ToString() == "manager")
                    {
                        //    lblError.Text = "E menadzer";
                               Response.Redirect("~/Pages/Manager/DefaultManager.aspx");
                    }
                    else if (Session["type"].ToString() == "user")
                    {
                    //      lblError.Text = "E korisnik";
                    Response.Redirect("~/Pages/User/DefaultUser.aspx");


                }


                }
                else
                {
                    lblError.Text = "Неуспешна најава";
                }
            }
        }
    
    }
