﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Collections.Generic;
namespace test1
{
    public partial class tracuu : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }
        [WebMethod]
        public static List<string> GetAutoCompleteData(string username)
        {
            List<string> result = new List<string>();

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                {
                    using (SqlCommand cmd = new SqlCommand("select MeanWord from Word where MeanWord LIKE '%'+@SearchText+'%'", conn))
                    {
                        conn.Open();
                        cmd.Parameters.AddWithValue("@SearchText", username);
                        SqlDataReader dr = cmd.ExecuteReader();
                        while (dr.Read())
                        {
                            result.Add(dr["MeanWord"].ToString());
                        }
                        return result;
                    }
                }
            }
        }
        protected void btntim_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                Response.Write("<script>alert('Bạn Phải Nhập Từ Khoá Trước Khi Tìm >.<!...')</script>");
            }
            else
            {
                string ProName = txtSearch.Text;
                Response.Redirect("tracuu.aspx?MeanWord=" + ProName );
            }

        }
    }
}