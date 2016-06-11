﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MojaZgrada.Pages.Manager
{
    public partial class ViewNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            pnlPregledaj.Visible = false;
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridView1.Visible = false;
            pnlPregledaj.Visible = true;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["MojaZgradaConnection"].ConnectionString;
            string id = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
            string sqlString = "SELECT  title, description, dateNews, attachments FROM NEWS WHERE idNews=" + id;
            SqlCommand cmd = new SqlCommand(sqlString, conn);

            try
            {

                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                lblTitle.Text = rdr["title"].ToString();
                lblDesc.Text = rdr["description"].ToString();
                lblAttach.Text = rdr["attachments"].ToString();
                lblDate.Text = rdr["dateNews"].ToString();
                rdr.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }
        }
    }
}