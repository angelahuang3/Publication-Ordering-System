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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB01; User Id = DB01; Password = DB01");
        string[] ono = new string[1000];
        string[] uno = new string[1000];
        string[] odate = new string[1000];
        string[] odel = new string[1000];
        string[] opay = new string[1000];
        string[] ototal = new string[1000];
        string[] odeldate = new string[1000];
        string[] ostates = new string[1000];
        //string[] uacc = new string[1000];

        string[] ono1 = new string[1000];
        string[] bno = new string[1000];
        string[] bname = new string[1000];
        string[] quantity = new string[1000];
        int i = 0;
        int j = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn.Open();
            SqlCommand Cmd = new SqlCommand("SELECT ONO,ORDERLIST.UNO,O_DATE,DELIVERY,PAYMENT,TOTAL,DEL_DATE,STATES FROM ORDERLIST,READER WHERE ORDERLIST.UNO = READER.UNO AND ORDERLIST.UNO = '" + Session["rno"].ToString() + "'", Conn);
            SqlDataReader dr = Cmd.ExecuteReader();

            //Label5.Text = Session["r_account"].ToString();

            while (dr.Read())
            {
                ono[i] = dr["ONO"].ToString();
                uno[i] = dr["UNO"].ToString();
                odate[i] = dr["O_DATE"].ToString();
                odel[i] = dr["DELIVERY"].ToString();
                opay[i] = dr["PAYMENT"].ToString();
                ototal[i] = dr["TOTAL"].ToString();
                odeldate[i] = dr["DEL_DATE"].ToString();
                ostates[i] = dr["STATES"].ToString();
                //uacc[i] = dr["U_ACCOUNT"].ToString();
                i++;
            }
            Cmd.Cancel();
            dr.Close();
           
            SqlCommand Cmd1 = new SqlCommand("SELECT ORDER_DETAIL.ONO,ORDER_DETAIL.BNO,B_NAME,QUANTITY FROM ORDERLIST, ORDER_DETAIL, BOOK WHERE ORDER_DETAIL.ONO = ORDERLIST.ONO AND ORDER_DETAIL.BNO = BOOK.BNO AND ORDERLIST.UNO = '" + Session["rno"].ToString() + "'", Conn);
            SqlDataReader dr1 = Cmd1.ExecuteReader();
            while (dr1.Read())
            {
                ono1[j] = dr1["ONO"].ToString();
                bno[j] = dr1["BNO"].ToString();
                bname[j] = dr1["B_NAME"].ToString();
                quantity[j] = dr1["QUANTITY"].ToString();
                j++;
            }
            Cmd1.Cancel();
            dr1.Close();
            Conn.Close();

            for (int m = 0; m <= i; m++){
                TextBox1.Text += ono[m] +"  "+ uno[m] +"  "+ odate[m] +"  "+ odel[m] +"  "+ opay[m] +"  "+ ototal[m] +"  "+ odeldate[m] +"  " + ostates[m] + "\n"; 
            }

            for (int n = 0; n <= j; n++){             
                TextBox2.Text += ono1[n] + "  " + bno[n] + "  " + bname[n] + "  " + quantity[n]+ "\n";
            }

            



        }
    }
}