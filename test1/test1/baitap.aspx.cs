using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            { 
            String maincon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            string sqlquery = "SELECT TOP 5 * FROM test ORDER BY NEWID()";
            sqlcon.Open();
            SqlCommand sqlcom = new SqlCommand(sqlquery, sqlcon);
            SqlDataAdapter sdr = new SqlDataAdapter(sqlcom);
            DataTable dt = new DataTable();
            sdr.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            sqlcon.Close();
            
            }
        }
        protected void btnnop_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("RadioButton1");
                Label labdapan = (Label)ri.FindControl("labcorrectans");
                labdapan.Visible = true;
                if (rb1.Checked == true)
                {
                    if (rb1.Text.Equals(labdapan.Text))
                    {
                        Label chon = (Label)ri.FindControl("labuserselectoption");
                        chon.Text = "Dap an la <b>" + rb1.Text.ToString() + "</b>";
                        chon.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label chonsai = (Label)ri.FindControl("labuserselectoption");
                        chonsai.Text = "<b>" + rb1.Text.ToString() + "</b> la dap an sai ";
                        chonsai.ForeColor = System.Drawing.Color.Red;
                    }
                }

            }
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb2 = (RadioButton)ri.FindControl("RadioButton2");
                Label labdapan = (Label)ri.FindControl("labcorrectans");
                labdapan.Visible = true;
                if (rb2.Checked == true)
                {
                    if (rb2.Text.Equals(labdapan.Text))
                    {
                        Label chon = (Label)ri.FindControl("labuserselectoption");
                        chon.Text = "Dap an la <b>" + rb2.Text.ToString() + "</b>";
                        chon.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label chonsai = (Label)ri.FindControl("labuserselectoption");
                        chonsai.Text = "<b>" + rb2.Text.ToString() + "</b> la dap an sai ";
                        chonsai.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb3 = (RadioButton)ri.FindControl("RadioButton3");
                Label labdapan = (Label)ri.FindControl("labcorrectans");
                labdapan.Visible = true;
                if (rb3.Checked == true)
                {
                    if (rb3.Text.Equals(labdapan.Text))
                    {
                        Label chon = (Label)ri.FindControl("labuserselectoption");
                        chon.Text = "Dap an la <b>" + rb3.Text.ToString() + "</b>";
                        chon.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        Label chonsai = (Label)ri.FindControl("labuserselectoption");
                        chonsai.Text = "<b>" + rb3.Text.ToString() + "</b> la dap an sai ";
                        chonsai.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb4 = (RadioButton)ri.FindControl("RadioButton4");
                Label labdapan = (Label)ri.FindControl("labcorrectans");
                labdapan.Visible = true;
                if (rb4.Checked == true)
                {
                    if (rb4.Text.Equals(labdapan.Text))
                    {
                        Label chon = (Label)ri.FindControl("labuserselectoption");
                        chon.Text = "Dap an la <b>" + rb4.Text.ToString() + "</b>";
                        chon.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label chonsai = (Label)ri.FindControl("labuserselectoption");
                        chonsai.Text = "<b>" + rb4.Text.ToString() + "</b> la dap an sai ";
                        chonsai.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        
    }
}