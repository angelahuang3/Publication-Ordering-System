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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] rno = new string[1000];
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("SELECT UNO FROM READER", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            while (dr.Read())
            {
                rno[i] = dr["UNO"].ToString();
                i++;
            }
            Cmd.Cancel();
            dr.Close();
            Conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int k = i + 1;
            string s = Convert.ToString(k);

            Conn.Open();
            SqlCommand Cmd = new SqlCommand("INSERT INTO READER ( UNO,U_NAME,U_GENDER,U_BIRTH,U_MAIL,U_PHONE,U_ACCOUNT,U_PASSWORD ) VALUES ('"+s+"','" +TextBox1.Text+"','"+TextBox9.Text+ "','"+ TextBox2.Text + "','" +TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" +TextBox7.Text + "')", Conn);
            Cmd.ExecuteNonQuery();
            Cmd.Cancel();
            Conn.Close();
        }        
    }
}