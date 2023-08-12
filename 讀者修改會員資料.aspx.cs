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
    public partial class 讀者修改會員資料 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] uno = new string[1000];
        string[] u_name = new string[1000];
        string[] u_gender = new string[1000];
        string[] u_birth = new string[1000];
        string[] u_mail = new string[1000];
        string[] u_phone = new string[1000];
        string[] u_password = new string[1000];
        int i = 0;       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("select UNO,U_NAME,U_GENDER,U_BIRTH,U_MAIL,U_PHONE,U_PASSWORD from READER where UNO = '" + Session["rno"].ToString() + "'", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            while (dr.Read())
            {
                uno[i] = dr["UNO"].ToString();
                u_name[i] = dr["U_NAME"].ToString();
                u_gender[i] = dr["U_GENDER"].ToString();
                u_birth[i] = dr["U_BIRTH"].ToString();
                u_mail[i] = dr["U_MAIL"].ToString();
                u_phone[i] = dr["U_PHONE"].ToString();
                u_password[i] = dr["U_PASSWORD"].ToString();
                i++;
            }
            Cmd.Cancel();
            dr.Close();
            Conn.Close();
            Label2.Text = uno[i - 1];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Conn.Open();
            if (TextBox1.Text != u_name[i-1] && TextBox1.Text != "") {                
                SqlCommand Cmd = new SqlCommand(" UPDATE READER SET U_NAME = '"+TextBox1.Text+"'"+" WHERE UNO = '"+uno[i-1]+"'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();           
            }            
            if (TextBox2.Text != u_gender[i - 1] && TextBox2.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE READER SET U_GENDER = '" + TextBox2.Text + "'" + " WHERE UNO = '" + uno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }          
            if (TextBox3.Text != u_birth[i - 1] && TextBox3.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE READER SET U_BIRTH = '" + TextBox3.Text + "'" + " WHERE UNO = '" + uno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();

            }
            if (TextBox4.Text != u_mail[i - 1] && TextBox4.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE READER SET U_MAIL = '" + TextBox4.Text + "'" + " WHERE UNO = '" + uno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            if (TextBox5.Text != u_phone[i - 1] && TextBox5.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE READER SET U_PHONE = '" + TextBox5.Text + "'" + " WHERE UNO = '" + uno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            if (TextBox6.Text != u_password[i - 1] && TextBox6.Text != "")
            {
                SqlCommand Cmd = new SqlCommand(" UPDATE READER SET U_PASSWORD = '" + TextBox6.Text + "'" + " WHERE UNO = '" + uno[i - 1] + "'", Conn);
                Cmd.ExecuteNonQuery();
                Cmd.Cancel();
            }
            Conn.Close();
        }
    }
}