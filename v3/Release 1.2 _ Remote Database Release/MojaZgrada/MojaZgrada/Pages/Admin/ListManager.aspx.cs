using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Admin
{
    public partial class ListManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lstMng.HeaderRow.TableSection = TableRowSection.TableHeader;

        }
    }
}