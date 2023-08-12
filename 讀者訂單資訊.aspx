<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="讀者訂單資訊.aspx.cs" Inherits="GO書系統頁面.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
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
   
    </style>
</head>

    <form id="form1" runat="server">
        <div class="bg">
            <img src="img\books.jpg" >
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="訂單資訊" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="175px" Width="1000px" TextMode="MultiLine" Font-Names="微軟正黑體" Font-Size="Medium" BorderColor="#339933"></asp:TextBox>
            <br />
        </div>
        <br />
        <span class="auto-style1">
			<asp:Label ID="Label5" runat="server" Text="訂單明細" Font-Names="微軟正黑體" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
            <br />
        <br />
        </span>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="175px" Width="1000px" TextMode="MultiLine" Font-Names="微軟正黑體" Font-Size="Medium" BorderColor="#267226"></asp:TextBox>
        <br />
		<br />
        <br />
    </form>
</body>
</html>
