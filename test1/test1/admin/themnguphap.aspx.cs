﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1.admin
{
    public partial class themnguphap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            try
            {
                string congthuc = txtcthuc.Text;
                string noidung = txtnoidung.Text;
               
                string bai = ddbai.SelectedValue.ToString();
                con.Open();
                string qry = "insert into nguphap values(" + bai + ",N'" + noidung + "',N'" + congthuc + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sd = cmd.ExecuteReader();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            con.Close();
            Response.Redirect("~/admin/nguphap.aspx");
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/nguphap.aspx");
        }
    }
}