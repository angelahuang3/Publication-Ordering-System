<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="讀者修改會員資料.aspx.cs" Inherits="GO書系統頁面.讀者修改會員資料" %>

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
        <asp:Label ID="Label1" runat="server" Text="讀者修改會員資料" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <span class="auto-style1">會員編號：</span><asp:Label ID="Label2" runat="server" CssClass="auto-style1" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">姓名：</span><asp:TextBox ID="TextBox1" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">性別：</span><asp:TextBox ID="TextBox2" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">生日：</span><asp:TextBox ID="TextBox3" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">電子郵件：</span><asp:TextBox ID="TextBox4" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">連絡電話：</span><asp:TextBox ID="TextBox5" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">密碼：</span><asp:TextBox ID="TextBox6" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確認送出" OnClick="Button1_Click" style="text-align: left" Font-Names="微軟正黑體" Font-Size="X-Large" />
    </form>
</body>
</html>
