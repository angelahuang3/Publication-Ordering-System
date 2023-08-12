<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="讀者新增舊書資訊.aspx.cs" Inherits="GO書系統頁面.WebForm7" %>

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
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改舊書資訊" Font-Names="微軟正黑體" Font-Size="X-Large" />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BNO" DataSourceID="SqlDataSource1" Width="1264px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="B_NAME" HeaderText="書名" SortExpression="B_NAME" />
                <asp:BoundField DataField="B_AUTHOR" HeaderText="作者" SortExpression="B_AUTHOR" />
                <asp:BoundField DataField="B_INFO" HeaderText="書籍簡介" SortExpression="B_INFO" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString34 %>" SelectCommand="SELECT [BNO], [B_NAME], [B_AUTHOR], [B_INFO] FROM [BOOK]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="新增舊書資訊" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <span class="auto-style1">書籍名稱：</span><asp:TextBox ID="TextBox1" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">舊書類別：</span><asp:TextBox ID="TextBox4" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <span class="auto-style1">(二手書/交換書)</span><br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">舊書價格：</span><asp:TextBox ID="TextBox5" runat="server" BorderColor="#009933" CssClass="auto-style1"></asp:TextBox>
        <span class="auto-style1">(二手書請輸入價格/交換書請輸入0)</span><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確認送出" OnClick="Button1_Click" Font-Names="微軟正黑體" Font-Size="X-Large" />
    </form>
</body>
</html>
