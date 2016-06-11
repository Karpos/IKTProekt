using MojaZgrada.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class PaymentTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtIme.Text = DropDownList2.SelectedValue.ToString();
            
        }

        protected void btnVnesiUplata_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                string sessionBuildingNo = Session["buildingNo"].ToString();
                                                              //(int numberApt, int buildingNo, int Income, DateTime dateIncomeFor,DateTime dateNow,string ticketNo,string comment)
                lblResult.Text = ConnectionClass.VnesiUplata(int.Parse( DropDownList2.SelectedItem.Text) , int.Parse(sessionBuildingNo), int.Parse(txtUplata.Text), Calendar1.SelectedDate, DateTime.Now, txtBrUplata.Text,txtComent.Text);
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //TextBox1.Visible = true;
            TextBox1.Text = Calendar1.SelectedDate.Day.ToString();
        }
    }
}