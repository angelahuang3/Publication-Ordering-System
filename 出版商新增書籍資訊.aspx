<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="出版商新增書籍資訊.aspx.cs" Inherits="GO書系統頁面.WebForm6" %>

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
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改書籍資訊" Font-Names="微軟正黑體" Font-Size="X-Large" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="修改出版商資料" Font-Names="微軟正黑體" Font-Size="X-Large" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="新增新書資訊" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
         <span class="auto-style1">書籍名稱：</span><asp:TextBox ID="TextBox2" runat="server" BorderColor="#009900" CssClass="auto-style1" Height="22px" Width="207px"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
         <span class="auto-style1">書籍作者：</span><asp:TextBox ID="TextBox3" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
         <span class="auto-style1">出版商編號：</span><asp:TextBox ID="TextBox4" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
         <span class="auto-style1">書籍價格：</span><asp:TextBox ID="TextBox6" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
         <span class="auto-style1">書籍簡介：</span><br class="auto-style1" />
        <br class="auto-style1" />
        <asp:TextBox ID="TextBox5" runat="server" Height="239px" TextMode="MultiLine" Width="689px" BorderColor="#009933"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確認送出" OnClick="Button1_Click" Font-Names="微軟正黑體" Font-Size="X-Large" />
    </form>
</body>
</html>
