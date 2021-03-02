using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1.N5.Tuvung
{
    public partial class tuvung1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rbcau1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rbcau1.SelectedValue== "")
            {
                lbcau1.Text = "Câu 1 chưa chọn đáp án";
            }
            else
            {


                string cau1 = rbcau1.SelectedValue;
                if (cau1 == "A")
                    lbcau1.Text = cau1 + "  là đáp án đúng";
                else lbcau1.Text = cau1 + "  là đáp án sai";
            }
            if (rbcau2.SelectedValue == "")
            {
                lbcau2.Text = "Câu 2 chưa chọn đáp án";
            }
            else
            {


                string cau2 = rbcau1.SelectedValue;
                if (cau2 == "b")
                    lbcau2.Text = cau2 + " là đáp án đúng";
                else lbcau2.Text = cau2 + " là đáp án sai";
            }
            if (rbcau3.SelectedValue == "")
            {
                lbcau3.Text = "Câu 3 chưa chọn đáp án";
            }
            else
            {


                string cau3 = rbcau3.SelectedValue;
                if (cau3 == "c")
                    lbcau3.Text = cau3 + " là đáp án đúng";
                else lbcau3.Text = cau3 + " là đáp án sai";
            }
            if (rbcau4.SelectedValue == "")
            {
                lbcau4.Text = "Câu 4 chưa chọn đáp án";
            }
            else
            {


                string cau4 = rbcau4.SelectedValue;
                if (cau4 == "d")
                    lbcau4.Text = cau4 + " là đáp án đúng";
                else lbcau4.Text = cau4 + " là đáp án sai";
            }
            if (rbcau5.SelectedValue == "")
            {
                lbcau5.Text = "Câu 5 chưa chọn đáp án";
            }
            else
            {


                string cau5 = rbcau5.SelectedValue;
                if (cau5 == "A")
                    lbcau5.Text = cau5 + " là đáp án đúng";
                else lbcau5.Text = cau5 + " là đáp án sai";
            }
        }
    }
}