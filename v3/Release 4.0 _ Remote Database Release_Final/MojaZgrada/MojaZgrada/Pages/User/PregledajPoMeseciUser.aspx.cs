using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.User
{
    public partial class PregledajPoMeseciUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                   if (!this.IsPostBack)
            {
                napolniMeseci();
                napolniGodini();
                
    }
}
public void napolniGodini()
{
    int now = DateTime.Now.AddYears(1).Year;

    DropDownList3.Items.Add(now.ToString());
    DropDownList3.Items.Add((now - 1).ToString());
    DropDownList3.Items.Add((now - 2).ToString());
}
public void napolniMeseci()
{
    for (int i = 0; i < 12; i++)
    {
        if (i < 9)
            DropDownList2.Items.Add("0" + (i + 1).ToString());
        //Console.WriteLine("aaa");
        else
        {
            DropDownList2.Items.Add((i + 1).ToString());
            //Console.WriteLine("aaa");

        }
    }
}
    }
}