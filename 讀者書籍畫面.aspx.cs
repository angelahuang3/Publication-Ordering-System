using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GO書系統頁面
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] maxOD = new string[1000];
        
        int m = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd1 = new SqlCommand("select max(ONO) as OD最大 from ORDERLIST", Conn);
            SqlDataReader dr1 = Cmd1.ExecuteReader();
            while (dr1.Read())
            {
                maxOD[m] += dr1["OD最大"].ToString();
                m++;
            }
            Cmd1.Cancel();
            dr1.Close();

            maxOD[m] += Convert.ToInt64(maxOD[m - 1]) + 1;
            //Label1.Text = maxOD[m] + "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("新書")) {
                this.GridView1.Visible = true;
                this.GridView2.Visible = false;
                this.GridView3.Visible = false;
            } else if (TextBox1.Text.Equals("二手書")) {
                this.GridView1.Visible = false;
                this.GridView2.Visible = true;
                this.GridView3.Visible = false;
            } else if (TextBox1.Text.Equals("交換書")) {
                this.GridView1.Visible = false;
                this.GridView2.Visible = false;
                this.GridView3.Visible = true;
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("讀者新增舊書資訊.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("讀者訂單資訊.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("讀者修改會員資料.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(GridView1.SelectedIndex);
            string s1 = GridView1.Rows[i].Cells[1].Text + " " + GridView1.Rows[i].Cells[2].Text+"(新書)";
            ListBox1.Items.Add(s1);

            if (TextBox1.Text.Equals("新書"))
            {
                this.GridView1.Visible = true;
                this.GridView2.Visible = false;
                this.GridView3.Visible = false;
            }
            
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(GridView2.SelectedIndex);
            string s1 = GridView2.Rows[i].Cells[1].Text + " " + GridView2.Rows[i].Cells[2].Text + "(二手書)";
            ListBox1.Items.Add(s1);

            if (TextBox1.Text.Equals("二手書"))
            {
                this.GridView1.Visible = false;
                this.GridView2.Visible = true;
                this.GridView3.Visible = false;
            }           
        }
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(GridView3.SelectedIndex);
            string s1 = GridView3.Rows[i].Cells[1].Text + " " + GridView3.Rows[i].Cells[2].Text + "(交換書)";
            ListBox1.Items.Add(s1);

            if (TextBox1.Text.Equals("交換書"))
            {
                this.GridView1.Visible = false;
                this.GridView2.Visible = false;
                this.GridView3.Visible = true;
            }
        }
        //購買
        protected void Button8_Click(object sender, EventArgs e)
        {
            string[] book = new string[1000];
            int sum = 0;
            for(int a = 0; a < ListBox1.Items.Count; a++)
            {
                book[a] = ListBox1.Items[a].Text.Substring(0, 6);
            }
            
            for(int a = 0; a < ListBox1.Items.Count; a++)
            {
                SqlCommand Cmd6 = new SqlCommand("select B_PRICE from INVENTORY where BNO='" + book[a] + "'", Conn);
                SqlDataReader dr2 = Cmd6.ExecuteReader();
                while (dr2.Read())
                {
                    sum += Convert.ToInt16(dr2["B_PRICE"].ToString());
                }
                Cmd6.Cancel();
                dr2.Close();
            }

            DateTime Odate = DateTime.Now;
            string s1 = Odate.ToShortDateString().ToString();
            string s2 = Odate.AddDays(7).ToShortDateString().ToString();

            SqlCommand Cmd3 = new SqlCommand("insert into ORDERLIST values('" + maxOD[m] + "','" + Session["rno"].ToString() + "','" + "A110" + "','" + s1 + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + sum + "','" + s2 + "','" + "處理中" + "')", Conn);
            Cmd3.ExecuteNonQuery();
            Cmd3.Cancel();

            for(int a = 0; a < ListBox1.Items.Count; a++) { 
            SqlCommand Cmd4 = new SqlCommand
                ("insert into ORDER_DETAIL(ONO,BNO,CATEGORY) select ORDERLIST.ONO,INVENTORY.BNO,INVENTORY.CATEGORY from ORDERLIST,INVENTORY where BNO='" + book[a] + "'AND ONO='" + maxOD[m] + "'", Conn);
            Cmd4.ExecuteNonQuery();
            Cmd4.Cancel();
            }
            SqlCommand Cmd5 = new SqlCommand("update ORDER_DETAIL set QUANTITY=1 where ONO='" + maxOD[m] + "'", Conn);
            Cmd5.ExecuteNonQuery();
            Cmd5.Cancel();
            Conn.Close();
        }
    }
}