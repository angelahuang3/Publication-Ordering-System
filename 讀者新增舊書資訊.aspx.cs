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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password=DB01");
        string[] bno = new string[1000];
        string[] c_cat = new string[1000];
        int i=0,j=0,k=0;

        protected void Page_Load(object sender, EventArgs e)
        {      
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("SELECT BNO FROM BOOK WHERE B_NAME = '" + TextBox1.Text + "'", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            while (dr.Read())
            {
                bno[i] = dr["BNO"].ToString();
                i++;
            }
            Cmd.Cancel();
            dr.Close();
            Conn.Close();
            //Label2.Text = bno[i-1];

            if (TextBox4.Text.Equals("交換書"))
            {
                Conn.Open();
                SqlCommand Cmd1 = new SqlCommand("SELECT CATEGORY FROM INVENTORY WHERE BNO = '" + bno[0] + "'", Conn);
                SqlDataReader dr1 = Cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    c_cat[j] += dr1["CATEGORY"].ToString();
                    j++;
                }
                Cmd1.Cancel();
                dr1.Close();
                Conn.Close();
                if (j == 1 || c_cat[j - 1].Substring(0, 1).ToString() == "S")
                {
                    Conn.Open();
                    SqlCommand Cmd2 = new SqlCommand("INSERT INTO INVENTORY ( BNO,CATEGORY,GNO,B_PRICE ) VALUES ('" + bno[0] + "','" + "C01" + "','" + Session["rno"].ToString() + "','" + TextBox5.Text + "')", Conn);
                    Cmd2.ExecuteNonQuery();
                    Cmd2.Cancel();
                    Conn.Close();
                }
                else if (j != 1 && c_cat[j - 1].Substring(0, 1).ToString() == "C")
                {
                    int s = Convert.ToInt32(c_cat[j - 1].Substring(1, 2)) + 1;
                    string m = "C0" + s;
                    Conn.Open();
                    SqlCommand Cmd3 = new SqlCommand("INSERT INTO INVENTORY ( BNO,CATEGORY,GNO,B_PRICE ) VALUES ('" + bno[0] + "','" + m + "','" + Session["rno"].ToString() + "','" + TextBox5.Text + "')", Conn);
                    Cmd3.ExecuteNonQuery();
                    Cmd3.Cancel();
                    Conn.Close();
                }
            }
            else if (TextBox4.Text.Equals("二手書"))
            {
                Conn.Open();
                SqlCommand Cmd4 = new SqlCommand("SELECT CATEGORY FROM INVENTORY WHERE BNO = '" + bno[0] + "'", Conn);
                SqlDataReader dr4 = Cmd4.ExecuteReader();
                while (dr4.Read())
                {
                    c_cat[k] += dr4["CATEGORY"].ToString();
                    k++;
                }
                Cmd4.Cancel();
                dr4.Close();
                Conn.Close();
                if (k == 1 || c_cat[k - 1].Substring(0, 1).ToString() == "C")
                {
                    Conn.Open();
                    SqlCommand Cmd5 = new SqlCommand("INSERT INTO INVENTORY ( BNO,CATEGORY,GNO,B_PRICE ) VALUES ('" + bno[0] + "','" + "S01" + "','" + Session["rno"].ToString() + "','" + TextBox5.Text + "')", Conn);
                    Cmd5.ExecuteNonQuery();
                    Cmd5.Cancel();
                    Conn.Close();
                }else if(k != 1 && c_cat[k - 1].Substring(0, 1).ToString() == "S")
                {
                    int s = Convert.ToInt32(c_cat[k - 1].Substring(1, 2)) + 1;
                    string m = "S0" + s;
                    Conn.Open();
                    SqlCommand Cmd6 = new SqlCommand("INSERT INTO INVENTORY ( BNO,CATEGORY,GNO,B_PRICE ) VALUES ('" + bno[0] + "','" + m + "','" + Session["rno"].ToString() + "','" + TextBox5.Text + "')", Conn);
                    Cmd6.ExecuteNonQuery();
                    Cmd6.Cancel();
                    Conn.Close();
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("讀者修改舊書資訊.aspx");
        }        
    }
}