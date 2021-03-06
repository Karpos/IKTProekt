﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class ViewNews : System.Web.UI.Page
    {
        string filePath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            pnlPregledaj.Visible = false;
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           
            GridView2.Visible = false;
            pnlPregledaj.Visible = true;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["MojaZgradaConnection"].ConnectionString;
            string id = GridView2.Rows[e.NewSelectedIndex].Cells[0].Text;
            string sqlString = "SELECT  title, description, dateNews, attachments FROM NEWS WHERE idNews=" + id;
            SqlCommand cmd = new SqlCommand(sqlString, conn);

            try
            {

                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                lblTitle.Text = rdr["title"].ToString();
                lblDesc.Text = rdr["description"].ToString();
                Label1.Text = rdr["attachments"].ToString();
                string temp = Path.GetFileName(rdr["attachments"].ToString()).ToString();
                lblAttach.Text = temp;
                //  rdr["attachments"].ToString();
        //        filePath = lblAttach.Text;
           //     Response.ContentType = ContentType;
        //        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
      //          Response.WriteFile(filePath);
        //        Response.End();

                lblDate.Text = rdr["dateNews"].ToString();

                rdr.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
              
            }
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                filePath = Label1.Text;
                Response.ContentType = ContentType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.WriteFile(filePath);
                Response.End();
            }
            catch (Exception)
            {
              
                Label2.Visible = true;
               
            }
        }
    }
}