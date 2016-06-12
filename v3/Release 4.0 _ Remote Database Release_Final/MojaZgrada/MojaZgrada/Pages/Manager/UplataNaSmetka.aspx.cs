using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class UplataNaSmetka : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                string sessionBuildingNo = Session["buildingNo"].ToString();
                var obj =  Class.ConnectionClass.getSaldo(int.Parse(sessionBuildingNo));
                Label1.Text = obj.Budget.ToString();
                Label2.Text = obj.BudgetBank.ToString();
            }
        }

        protected void btnVnesiUplata_Click(object sender, EventArgs e)
        {
            string sessionBuildingNo = Session["buildingNo"].ToString();
            var obj = Class.ConnectionClass.getSaldo(int.Parse(sessionBuildingNo));
            if (obj.Budget - int.Parse(Suma.Text) >= 0)
            {
                Class.ConnectionClass.UplatiBanka(int.Parse(Suma.Text), int.Parse(sessionBuildingNo), txtBrUplata.Text, txtComent.Text);

            }
            obj = Class.ConnectionClass.getSaldo(int.Parse(sessionBuildingNo));
            Label1.Text = obj.Budget.ToString();
            Label2.Text = obj.BudgetBank.ToString();
        }
    }
}