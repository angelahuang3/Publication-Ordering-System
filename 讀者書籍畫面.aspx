<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="讀者書籍畫面.aspx.cs" Inherits="GO書系統頁面.WebForm4" %>

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
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
    	.auto-style3 {
			text-align: left;
			width: 1047px;
		}
    	.auto-style4 {
			margin-right: 0px;
            font-size: x-large;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg">
            <img src="img\books.jpg" >
        </div>
        <div class="auto-style1">
        <div class="auto-style2">
                    <asp:Button ID="Button4" runat="server" Text="新增舊書資訊" OnClick="Button4_Click" Font-Names="微軟正黑體" Font-Size="X-Large" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="查看訂單資訊" OnClick="Button6_Click" Font-Names="微軟正黑體" Font-Size="X-Large" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="修改個人資料" Font-Names="微軟正黑體" Font-Size="X-Large" />
        </div>
            <div class="auto-style3">

        <br />
        		<span class="auto-style5">購物車：</span><br class="auto-style5" />
                <asp:ListBox ID="ListBox1" runat="server" Width="249px" BorderColor="#009933" CssClass="auto-style5" Font-Names="微軟正黑體"></asp:ListBox>
				<br class="auto-style5" />
				<br class="auto-style5" />
				<span class="auto-style5">收貨方式：</span><asp:TextBox ID="TextBox2" runat="server" BorderColor="#009933" CssClass="auto-style5"></asp:TextBox>
				<span class="auto-style5">(7-11取貨/全家取貨/宅配到府)</span><br class="auto-style5" />
				<br class="auto-style5" />
				<span class="auto-style5">付款方式：</span><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" BorderColor="#009933"></asp:TextBox>
                <span class="auto-style5">(7-11取貨付現/全家取貨付現/信用卡線上刷卡/ATM付款)</span><br class="auto-style5" />
                <br class="auto-style5" />
        		<asp:Button ID="Button8" runat="server" Text="購買" OnClick="Button8_Click" CssClass="auto-style5" />
				<br class="auto-style5" />
        <br class="auto-style5" />
                <span class="auto-style5">請輸入想要瀏覽的書籍種類(新書、二手書、交換書)</span><br class="auto-style5" />
        <br class="auto-style5" />
        <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="231px" CssClass="auto-style4" BorderColor="#009933"></asp:TextBox>
                &nbsp;<span class="auto-style5">
        </span>
        <asp:Button ID="Button5" runat="server" Text="執行" OnClick="Button5_Click" CssClass="auto-style5" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BNO" DataSourceID="SqlDataSource1" style="text-align: left" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False" Width="724px" Font-Names="微軟正黑體">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="加入" ShowSelectButton="True" />
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="B_NAME" HeaderText="書名" SortExpression="B_NAME" />
                <asp:BoundField DataField="B_AUTHOR" HeaderText="書籍作者" SortExpression="B_AUTHOR" />
                <asp:BoundField DataField="B_INFO" HeaderText="書籍簡介" SortExpression="B_INFO" />
                <asp:BoundField DataField="P_NAME" HeaderText="出版商" SortExpression="P_NAME" />
                <asp:BoundField DataField="B_PRICE" HeaderText="售價" SortExpression="B_PRICE" />
            </Columns>
        </asp:GridView>
        <br />
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString %>" SelectCommand="SELECT BOOK.BNO,B_NAME,B_AUTHOR,B_INFO,P_NAME,B_PRICE
FROM BOOK,PUBLISHER,INVENTORY
WHERE BOOK.PNO = PUBLISHER.PNO
AND BOOK.BNO = INVENTORY.BNO
AND CATEGORY = 'B00';"></asp:SqlDataSource>
        &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BNO" DataSourceID="SqlDataSource2" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False" Width="715px" Font-Names="微軟正黑體">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="加入" ShowSelectButton="True" />
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="B_NAME" HeaderText="書名" SortExpression="B_NAME" />
                <asp:BoundField DataField="B_AUTHOR" HeaderText="作者" SortExpression="B_AUTHOR" />
                <asp:BoundField DataField="B_INFO" HeaderText="書籍簡介" SortExpression="B_INFO" />
                <asp:BoundField DataField="P_NAME" HeaderText="出版商" SortExpression="P_NAME" />
                <asp:BoundField DataField="B_PRICE" HeaderText="售價" SortExpression="B_PRICE" />
                <asp:BoundField DataField="U_NAME" HeaderText="提供者" SortExpression="U_NAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString %>" SelectCommand="SELECT BOOK.BNO,B_NAME,B_AUTHOR,B_INFO,P_NAME,B_PRICE,READER.U_NAME
FROM BOOK,PUBLISHER,INVENTORY,READER
WHERE BOOK.PNO = PUBLISHER.PNO
AND BOOK.BNO = INVENTORY.BNO
AND INVENTORY.GNO = READER.UNO 
AND CATEGORY LIKE 'S%';"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="BNO" DataSourceID="SqlDataSource3" AllowPaging="True" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Visible="False" Width="713px" Font-Names="微軟正黑體">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="加入" ShowSelectButton="True" />
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="B_NAME" HeaderText="書名" SortExpression="B_NAME" />
                <asp:BoundField DataField="B_AUTHOR" HeaderText="作者" SortExpression="B_AUTHOR" />
                <asp:BoundField DataField="B_INFO" HeaderText="書籍簡介" SortExpression="B_INFO" />
                <asp:BoundField DataField="P_NAME" HeaderText="出版商" SortExpression="P_NAME" />
                <asp:BoundField DataField="B_PRICE" HeaderText="售價" SortExpression="B_PRICE" />
                <asp:BoundField DataField="U_NAME" HeaderText="提供者" SortExpression="U_NAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString3 %>" SelectCommand="SELECT BOOK.BNO,B_NAME,B_AUTHOR,B_INFO,P_NAME,B_PRICE,READER.U_NAME
FROM BOOK,PUBLISHER,INVENTORY,READER
WHERE BOOK.PNO = PUBLISHER.PNO
AND BOOK.BNO = INVENTORY.BNO
AND INVENTORY.GNO = READER.UNO 
AND CATEGORY LIKE 'C%';
"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    </form>
</body>
</html>
