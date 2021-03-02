using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1.admin
{
    public partial class themkanji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            try
            {
                string hira = txthira.Text;
                string kanji = txtkanji.Text;
                string mean = txtmean.Text;
                string hantu = txthantu.Text;
                string bai = ddbai.SelectedValue.ToString();
                con.Open();
                string qry = "insert into kanji values(N'" + kanji + "',N'" + hira + "',N'" + mean + "',N'" + hantu + "'," + bai + ")";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sd = cmd.ExecuteReader();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            con.Close();
            Response.Redirect("~/admin/kanji.aspx");
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/kanji.aspx");
        }
    }
}