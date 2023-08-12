<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="讀者帳號申請.aspx.cs" Inherits="GO書系統頁面.WebForm2" %>

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
        <br />
        <asp:Label ID="Label3" runat="server" Text="GO書購書讀者帳號申請" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
          <span class="auto-style1">會員帳號：</span><asp:TextBox ID="TextBox6" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
          <span class="auto-style1">姓名：</span><asp:TextBox ID="TextBox1" runat="server" Height="23px" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
          <span class="auto-style1">性別：</span><asp:TextBox ID="TextBox9" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
          <span class="auto-style1">生日：</span><asp:TextBox ID="TextBox2" runat="server" Width="176px" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
          <span class="auto-style1">電子郵件：</span><asp:TextBox ID="TextBox4" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
          <span class="auto-style1">手機號碼：</span><asp:TextBox ID="TextBox5" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
          <span class="auto-style1">密碼：</span><asp:TextBox ID="TextBox7" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確認送出" OnClick="Button1_Click" Font-Names="微軟正黑體" Font-Size="X-Large" />
    </form>
</body>
</html>
