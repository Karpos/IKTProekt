using MojaZgrada.Class;
using System;
using System.Collections.Generic;
using System.IO;
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
            string relativePath = "none";
            string sesija = Session["buildingNo"].ToString();
            string user = Session["login"].ToString();
            if (Session["login"] != null)
            {
            

                if (FileUpload1.HasFile)
                    try {
                       
                        relativePath = @"~\Files\" + FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath(relativePath));
                     //   FileUpload1.SaveAs(@"~\\Files\\" + FileUpload1.FileName);
                  //      lblResult.Text = "File name: " +
                  //           FileUpload1.PostedFile.FileName + "<br>" +
                  //           FileUpload1.PostedFile.ContentLength + " kb<br>" +   "Content type: " +
                  //           FileUpload1.PostedFile.ContentType;
                    }
                    catch (Exception ex)
                    {
                        lblResult.Text = "Грешка: " + ex.Message.ToString();
                    }
                else
                {
                    lblResult.Text = "Не прикачивте документ.";
                }
             
                string str = ConnectionClass.VnesiSoopstenie(int.Parse(sesija), user, txtNaslov.Text, txtOpis.Text, DateTimeOffset.Parse(DateTime.Now.ToUniversalTime().ToString()), relativePath, int.Parse(sesija));
                lblResult.ForeColor = str.Contains("НЕ") ? System.Drawing.Color.Red : System.Drawing.Color.Green;
                lblResult.Text = str;

            }
        }

    }
    }
