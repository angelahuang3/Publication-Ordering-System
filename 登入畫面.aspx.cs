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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] rno = new string[1000];
        string[] r_account = new string[1000];
        string[] r_password = new string[1000];
        string[] p_account = new string[1000];
        string[] p_password = new string[1000];
        string[] a_account = new string[1000];
        string[] a_password = new string[1000];
        int i = 0;
        int j = 0;
        int k = 0;
        protected void Page_Load(object sender, EventArgs e)
        { 
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Text == "讀者")
            {
                Conn.Open();
                SqlCommand Cmd = new SqlCommand("select UNO,U_ACCOUNT,U_PASSWORD from READER where U_ACCOUNT = '" + TextBox1.Text + "' ", Conn);
                SqlDataReader dr = Cmd.ExecuteReader();
                while (dr.Read())
                {
                    rno[i] = dr["UNO"].ToString();
                    r_account[i] = dr["U_ACCOUNT"].ToString();
                    r_password[i] = dr["U_PASSWORD"].ToString();                   
                    i++;
                }
                Cmd.Cancel();
                dr.Close();
                Conn.Close();
            }
            else if (RadioButtonList1.SelectedItem.Text == "出版商")
            {
                Conn.Open();
                SqlCommand Cmd1 = new SqlCommand("select PNO,P_PASSWORD from PUBLISHER where PNO = '" + TextBox1.Text + "' ", Conn);
                SqlDataReader dr1 = Cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    p_account[j] = dr1["PNO"].ToString();
                    p_password[j] = dr1["P_PASSWORD"].ToString();
                    j++;
                }
                Cmd1.Cancel();
                dr1.Close();
                Conn.Close();
            }
            else
            {
                Conn.Open();
                SqlCommand Cmd2 = new SqlCommand("select ANO,A_PASSWORD from ADMINISTRATOR where ANO = '" + TextBox1.Text + "' ", Conn);
                SqlDataReader dr2 = Cmd2.ExecuteReader();
                while (dr2.Read())
                {
                    a_account[k] = dr2["ANO"].ToString();
                    a_password[k] = dr2["A_PASSWORD"].ToString();
                    k++;
                }
                Cmd2.Cancel();
                dr2.Close();
                Conn.Close();
            }

            if (RadioButtonList1.SelectedItem.Text == "讀者") {
                for (int m = 0; m < i; m++) {
                    if (TextBox1.Text == r_account[m] && TextBox2.Text == r_password[m]) {
                        Session.Add("account", r_account[m]);
                        Session.Add("rno", rno[m]);
                        Response.Redirect("讀者書籍畫面.aspx");
                    }else {
                        Label5.Text = "密碼錯誤";
                    }
                }  
            }
            else if (RadioButtonList1.SelectedItem.Text == "出版商")
            {
                for (int n = 0; n < j; j++)
                {
                    if (TextBox1.Text == p_account[n] && TextBox2.Text == p_password[n])
                    {
                        Session.Add("account", p_account[n]);
                        Response.Redirect("出版商新增書籍資訊.aspx");
                    }
                    else
                    {
                        Label5.Text = "密碼錯誤";
                    }
                }
            }else if (RadioButtonList1.SelectedItem.Text == "管理者")
            {
                for (int u = 0; u < k; u++)
                {
                    if (TextBox1.Text == a_account[u] && TextBox2.Text == a_password[u])
                    {
                        Session.Add("account", a_account[u]);
                        Response.Redirect("管理者修改訂單狀態.aspx");
                    }
                    else
                    {
                        Label5.Text = "密碼錯誤";
                    }
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("讀者帳號申請.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("出版商帳號申請.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}