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
    public partial class 出版商修改會員資料 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] pno = new string[1000];
        string[] p_password = new string[1000];
        string[] p_name = new string[1000];
        string[] p_mail = new string[1000];
        string[] p_phone = new string[1000];       
        int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("select PNO,P_PASSWORD,P_NAME,P_MAIL,P_PHONE from PUBLISHER where PNO = '" + Session["account"].ToString() + "'", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            while (dr.Read())
            {
                pno[i] = dr["PNO"].ToString();
                p_password[i] = dr["P_PASSWORD"].ToString();
                p_name[i] = dr["P_NAME"].ToString();
                p_mail[i] = dr["P_MAIL"].ToString();
                p_phone[i] = dr["P_PHONE"].ToString();               
                i++;
            }
            Cmd.Cancel();
            dr.Close();
            Conn.Close();
            Label2.Text = pno[i - 1];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Conn.Open();
            if (TextBox1.Text != p_password[i - 1] && TextBox1.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE PUBLISHER SET P_PASSWORD = '" + TextBox1.Text + "'" + " WHERE PNO = '" + pno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            if (TextBox2.Text != p_name[i - 1] && TextBox2.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE PUBLISHER SET P_NAME = '" + TextBox2.Text + "'" + " WHERE PNO = '" + pno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            if (TextBox3.Text != p_mail[i - 1] && TextBox3.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE PUBLISHER SET P_MAIL = '" + TextBox3.Text + "'" + " WHERE PNO = '" + pno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            if (TextBox4.Text != p_phone[i - 1] && TextBox4.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE PUBLISHER SET P_PHONE = '" + TextBox4.Text + "'" + " WHERE PNO = '" + pno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            Conn.Close();
        }
    }
}