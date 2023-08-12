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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] bno = new string[1000];
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("SELECT BNO FROM BOOK", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            while (dr.Read())
            {
                bno[i] = dr["BNO"].ToString();
                i++;
            }
            Cmd.Cancel();
            dr.Close();
            Conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("出版商修改書籍資訊.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("出版商修改會員資料.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sub = bno[i-1].Substring(1, 5);
            int s = Convert.ToInt32(sub)+1;
            string bid = "B" + s;
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("INSERT INTO BOOK ( BNO,B_NAME,B_AUTHOR,PNO,B_INFO ) VALUES ('" + bid + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", Conn);
            SqlCommand Cmd1 = new SqlCommand("INSERT INTO INVENTORY ( BNO,CATEGORY,GNO,B_PRICE ) VALUES ('" + bid + "','B00',NULL,'" + TextBox6.Text + "' )", Conn);
            Cmd.ExecuteNonQuery();
            Cmd1.ExecuteNonQuery();
            Cmd.Cancel();
            Cmd1.Cancel();
            Conn.Close();
        }


    }
}