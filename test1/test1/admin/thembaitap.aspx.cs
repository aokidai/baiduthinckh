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
    public partial class thembaitap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            try
            {

                string bai = ddbai.SelectedValue.ToString();
                string cauhoi = txtcauhoi.Text;
                string caua = txta.Text;
                string caub = txtb.Text;
                string cauc = txtc.Text;
                string caud = txtd.Text;
                string dapan = txtdapan.Text;
                con.Open();
                string qry = "insert into Test values(N'" + bai + "',N'" + cauhoi + "',N'" + caua + "',N'" + caub + "',N'" + cauc + "',N'" + caud + "',N'" + dapan + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sd = cmd.ExecuteReader();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            con.Close();
            Response.Redirect("~/admin/baitap.aspx");

        }
    }
}