using MojaZgrada.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class VnesiSoopstenie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSoostenie_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                string sesija = Session["buildingNo"].ToString();
                string user = Session["login"].ToString();
                string str = ConnectionClass.VnesiSoopstenie(int.Parse(sesija), user, txtNaslov.Text, txtOpis.Text, DateTimeOffset.Parse(DateTime.Now.ToUniversalTime().ToString()), txtPrikacuvanja.Text, int.Parse(sesija));
                lblResult.ForeColor = str.Contains("НЕ") ? System.Drawing.Color.Red : System.Drawing.Color.Green;
                lblResult.Text = str;

            }
        }
    }
}