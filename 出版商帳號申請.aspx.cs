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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] pno = new string[1000];
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("SELECT PNO FROM PUBLISHER", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            while (dr.Read())
            {
                pno[i] = dr["PNO"].ToString();
                i++;
            }
            Cmd.Cancel();
            dr.Close();
            Conn.Close();
            string sub = pno[i - 1].Substring(1, 3);
            int s = Convert.ToInt32(sub) + 1;
            string pid = "P" + s;
            Label5.Text = pid;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string subpno = pno[i - 1].Substring(1, 3);
            int t = Convert.ToInt32(subpno) + 1;
            string pid2 = "P" + t;
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("INSERT INTO PUBLISHER ( PNO,P_PASSWORD,P_NAME,P_MAIL,P_PHONE ) VALUES ( '" + pid2 + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", Conn);
            Cmd.ExecuteNonQuery();
            Cmd.Cancel();
            Conn.Close();
        }
    }
}