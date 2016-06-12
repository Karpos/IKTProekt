using MojaZgrada.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string type = "user";
            //This is here to "hardcode" administrator building number ( you can use separate function for this)
            string BuildingNo = Session["buildingNo"].ToString();

            if (txtPassword.Text == txtPassword2.Text)
            {                                                            //username,  password, type,email, buildingNumber, name, surname, numberApt,address,City,Country);
                Label2.Text = ConnectionClass.vnesiKorinik(txtUsername.Text, txtPassword.Text, txtEmail.Text, type, Int32.Parse(BuildingNo), txtIme.Text, txtPrezime.Text, Int32.Parse(txtAptNo.Text), txtAddress.Text, txtCity.Text, txtState.Text);
                //Label2.Text 
                Label2.Visible = true;
                txtAddress.Text = "";
                txtAptNo.Text = "";
                txtCity.Text = "";
                txtEmail.Text = "";
                txtErroMsg.Text = "";
                txtIme.Text = "";
                txtPassword.Text = "";
                txtPassword2.Text = "";
                txtPrezime.Text = "";
                txtState.Text = "";
                txtUsername.Text = "";
            }
            else { txtErroMsg.Text = "Неуспешен внес! "; }
        }
    }
}