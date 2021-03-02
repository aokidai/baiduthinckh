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
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            try
            {
                string uid = txtdn.Text;
                string pass = txtmk.Text;
                conn.Open();
                string qry = "select * from Acc where Username='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["TenDn"] = uid;
                    Response.Redirect("~/admin/bai.aspx");
                }
                else
                {


                    lbBaoloi.Text = "Sai tên đăng nhập hoặc mật khẩu";

                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}