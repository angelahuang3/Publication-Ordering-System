<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="出版商修改會員資料.aspx.cs" Inherits="GO書系統頁面.出版商修改會員資料" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        .bg{
            position:fixed;
            top:0;
            left:0;
            bottom:0;
            right:0;
            z-index:-999;
        }
        .bg img{
            min-height:100%;
            width:100%;
            height: 863px;
        }
         .auto-style1 {
             font-size: x-large;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="bg">
            <img src="img\books.jpg" >
        </div>
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="出版商修改會員資料" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
          <p>
              <span class="auto-style1" >出版商編號：</span><asp:Label ID="Label2" runat="server" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
        </p>
        <p>
            <span class="auto-style1">密碼：</span><asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="175px" BorderColor="#009933"></asp:TextBox>
        </p>
          <p>
              <span class="auto-style1">出版商名稱：</span><asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="139px" BorderColor="#009933"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style1">電子郵件：</span><asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="164px" BorderColor="#009933"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style1">連絡電話：</span><asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="171px" BorderColor="#009933"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認送出" Font-Names="微軟正黑體" Font-Size="X-Large" Height="36px" Width="130px" />
        </p>
    </form>
</body>
</html>
