<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="出版商修改書籍資訊.aspx.cs" Inherits="GO書系統頁面.WebForm9" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg">
            <img src="img\books.jpg" >
        </div>
        <asp:Label ID="Label1" runat="server" Text="出版商修改書籍資訊" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"  BorderColor="Black" BorderWidth="1px" CellPadding="2" DataKeyNames="BNO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="1300px" BorderStyle="Solid">
            <AlternatingRowStyle BorderColor="Black"  />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="BNO" HeaderText="書籍資訊" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="B_NAME" HeaderText="書籍名稱" SortExpression="B_NAME" />
                <asp:BoundField DataField="B_AUTHOR" HeaderText="書籍作者" SortExpression="B_AUTHOR" />
                <asp:BoundField DataField="PNO" HeaderText="出版商編號" SortExpression="PNO" />
                <asp:BoundField DataField="B_INFO" HeaderText="書籍簡介" SortExpression="B_INFO" />
            </Columns>
           
            <EditRowStyle BorderColor="Black" />
            <EmptyDataRowStyle BorderColor="Black" />
           
            <RowStyle BorderColor="Black"  />
            <SelectedRowStyle BorderColor="Black"  />
            <SortedAscendingCellStyle BorderColor="Black"  />
            <SortedAscendingHeaderStyle BorderColor="Black" />
           
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString22 %>" SelectCommand="SELECT * FROM [BOOK]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#E1FFFF" BorderColor="White" BorderWidth="1px" CellPadding="2" DataKeyNames="BNO,CATEGORY" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Width="500px">
            <AlternatingRowStyle BackColor=#FFFFCC />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="CATEGORY" HeaderText="書籍類別" ReadOnly="True" SortExpression="CATEGORY" />
                <asp:BoundField DataField="GNO" HeaderText="提供者編號" SortExpression="GNO" />
                <asp:BoundField DataField="B_PRICE" HeaderText="書籍價格" SortExpression="B_PRICE" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle  Font-Bold="True" BorderColor="Black" />
            <PagerStyle  ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle />
           
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString26 %>" SelectCommand="SELECT * FROM [INVENTORY]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="BNO" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="1300px">
            <AlternatingRowStyle BackColor=#FFFFCC />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="B_NAME" HeaderText="書籍名稱" SortExpression="B_NAME" />
                <asp:BoundField DataField="B_AUTHOR" HeaderText="書籍作者" SortExpression="B_AUTHOR" />
                <asp:BoundField DataField="PNO" HeaderText="出版商編號" SortExpression="PNO" />
                <asp:BoundField DataField="B_INFO" HeaderText="書籍簡介" SortExpression="B_INFO" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="White" Font-Bold="True" BorderColor="White" />
            <PagerStyle BackColor="#FFFF99" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString23 %>" DeleteCommand="DELETE FROM [BOOK] WHERE [BNO] = @BNO" InsertCommand="INSERT INTO [BOOK] ([BNO], [B_NAME], [B_AUTHOR], [PNO], [B_INFO]) VALUES (@BNO, @B_NAME, @B_AUTHOR, @PNO, @B_INFO)" SelectCommand="SELECT * FROM [BOOK] WHERE ([BNO] = @BNO)" UpdateCommand="UPDATE [BOOK] SET [B_NAME] = @B_NAME, [B_AUTHOR] = @B_AUTHOR, [PNO] = @PNO, [B_INFO] = @B_INFO WHERE [BNO] = @BNO">
            <DeleteParameters>
                <asp:Parameter Name="BNO" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BNO" Type="String" />
                <asp:Parameter Name="B_NAME" Type="String" />
                <asp:Parameter Name="B_AUTHOR" Type="String" />
                <asp:Parameter Name="PNO" Type="String" />
                <asp:Parameter Name="B_INFO" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="BNO" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="B_NAME" Type="String" />
                <asp:Parameter Name="B_AUTHOR" Type="String" />
                <asp:Parameter Name="PNO" Type="String" />
                <asp:Parameter Name="B_INFO" Type="String" />
                <asp:Parameter Name="BNO" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="BNO,CATEGORY" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None" Height="50px" Width="200px">
            <AlternatingRowStyle BackColor=#FFFFCC />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="BNO" HeaderText="書籍編號" ReadOnly="True" SortExpression="BNO" />
                <asp:BoundField DataField="CATEGORY" HeaderText="書籍類別" ReadOnly="True" SortExpression="CATEGORY" />
                <asp:BoundField DataField="GNO" HeaderText="提供者編號" SortExpression="GNO" />
                <asp:BoundField DataField="B_PRICE" HeaderText="書籍價格" SortExpression="B_PRICE" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="White" Font-Bold="True" BorderColor="White" />
            <PagerStyle BackColor="#FFFF99" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString27 %>" DeleteCommand="DELETE FROM [INVENTORY] WHERE [BNO] = @BNO AND [CATEGORY] = @CATEGORY" InsertCommand="INSERT INTO [INVENTORY] ([BNO], [CATEGORY], [GNO], [B_PRICE]) VALUES (@BNO, @CATEGORY, @GNO, @B_PRICE)" SelectCommand="SELECT * FROM [INVENTORY] WHERE ([BNO] = @BNO)" UpdateCommand="UPDATE [INVENTORY] SET [GNO] = @GNO, [B_PRICE] = @B_PRICE WHERE [BNO] = @BNO AND [CATEGORY] = @CATEGORY">
            <DeleteParameters>
                <asp:Parameter Name="BNO" Type="String" />
                <asp:Parameter Name="CATEGORY" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BNO" Type="String" />
                <asp:Parameter Name="CATEGORY" Type="String" />
                <asp:Parameter Name="GNO" Type="String" />
                <asp:Parameter Name="B_PRICE" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="BNO" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="GNO" Type="String" />
                <asp:Parameter Name="B_PRICE" Type="Int32" />
                <asp:Parameter Name="BNO" Type="String" />
                <asp:Parameter Name="CATEGORY" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
