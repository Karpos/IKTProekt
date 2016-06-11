using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class IsplataOdBankSmetka : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                string sessionBuildingNo = Session["buildingNo"].ToString();
                var obj = Class.ConnectionClass.getSaldo(int.Parse(sessionBuildingNo));
                Label1.Text = obj.Budget.ToString();
                Label2.Text = obj.BudgetBank.ToString();
            }
        }

        protected void btnVnesiUplata_Click(object sender, EventArgs e)
        {
            string sessionBuildingNo = Session["buildingNo"].ToString();
            var obj = Class.ConnectionClass.getSaldo(int.Parse(sessionBuildingNo));
            if (obj.BudgetBank - int.Parse(Suma.Text) >= 0)
            {
                txtErrorMsg.Text = Class.ConnectionClass.IsplatiBanka(int.Parse(Suma.Text), int.Parse(sessionBuildingNo), txtBrUplata.Text, txtComent.Text);
                txtBrUplata.Text = "";
                txtComent.Text = "";
                Suma.Text = "";
            }
            else {
                txtErrorMsg.Text = "Немате доволно средства во банка за да ја извршите уплатата.";
                    }
            obj = Class.ConnectionClass.getSaldo(int.Parse(sessionBuildingNo));
            Label1.Text = obj.Budget.ToString();
            Label2.Text = obj.BudgetBank.ToString();
        }
    }
}