<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="管理者修改訂單狀態.aspx.cs" Inherits="GO書系統頁面.WebForm8" %>

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

    <form id="form1" runat="server">
        <div class="bg">
            <img src="img\books.jpg" >
        </div>
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="編輯訂單狀態" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ONO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="948px" BackColor="#FFFFCC" BorderColor="White" BorderWidth="1px" Font-Names="微軟正黑體" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 0px">
            <AlternatingRowStyle BackColor="#E1FFFF" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ONO" HeaderText="訂單編號" ReadOnly="True" SortExpression="ONO" />
                <asp:BoundField DataField="UNO" HeaderText="讀者編號" SortExpression="UNO" />
                <asp:BoundField DataField="ANO" HeaderText="管理者編號" SortExpression="ANO" />
                <asp:BoundField DataField="TOTAL" HeaderText="總金額" SortExpression="TOTAL" />
                <asp:BoundField DataField="STATES" HeaderText="訂單狀態" SortExpression="STATES" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="White" Font-Bold="True" BorderColor="White" />
            <PagerStyle BackColor="#FFFF99" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FFFF33" />
            <SortedAscendingHeaderStyle BackColor="#FFCCCC" ForeColor="#FF0066" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString24 %>" SelectCommand="SELECT * FROM [ORDERLIST]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="2" DataKeyNames="ONO" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="946px" BackColor="#E1FFFF" BorderColor="White" BorderWidth="1px" Font-Names="微軟正黑體">
            <AlternatingRowStyle BackColor="#FFFFCC" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="ONO" HeaderText="訂單編號" ReadOnly="True" SortExpression="ONO" />
                <asp:BoundField DataField="UNO" HeaderText="讀者編號" SortExpression="UNO" />
                <asp:BoundField DataField="ANO" HeaderText="管理者編號" SortExpression="ANO" />
                <asp:BoundField DataField="O_DATE" HeaderText="訂購日期" SortExpression="O_DATE" />
                <asp:BoundField DataField="DELIVERY" HeaderText="寄送方式" SortExpression="DELIVERY" />
                <asp:BoundField DataField="PAYMENT" HeaderText="付款方式" SortExpression="PAYMENT" />
                <asp:BoundField DataField="TOTAL" HeaderText="總金額" SortExpression="TOTAL" />
                <asp:BoundField DataField="DEL_DATE" HeaderText="寄送日期" SortExpression="DEL_DATE" />
                <asp:BoundField DataField="STATES" HeaderText="訂單狀態" SortExpression="STATES" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString25 %>" DeleteCommand="DELETE FROM [ORDERLIST] WHERE [ONO] = @ONO" InsertCommand="INSERT INTO [ORDERLIST] ([ONO], [UNO], [ANO], [O_DATE], [DELIVERY], [PAYMENT], [TOTAL], [DEL_DATE], [STATES]) VALUES (@ONO, @UNO, @ANO, @O_DATE, @DELIVERY, @PAYMENT, @TOTAL, @DEL_DATE, @STATES)" SelectCommand="SELECT * FROM [ORDERLIST] WHERE ([ONO] = @ONO)" UpdateCommand="UPDATE [ORDERLIST] SET [UNO] = @UNO, [ANO] = @ANO, [O_DATE] = @O_DATE, [DELIVERY] = @DELIVERY, [PAYMENT] = @PAYMENT, [TOTAL] = @TOTAL, [DEL_DATE] = @DEL_DATE, [STATES] = @STATES WHERE [ONO] = @ONO">
            <DeleteParameters>
                <asp:Parameter Name="ONO" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ONO" Type="String" />
                <asp:Parameter Name="UNO" Type="String" />
                <asp:Parameter Name="ANO" Type="String" />
                <asp:Parameter DbType="Date" Name="O_DATE" />
                <asp:Parameter Name="DELIVERY" Type="String" />
                <asp:Parameter Name="PAYMENT" Type="String" />
                <asp:Parameter Name="TOTAL" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DEL_DATE" />
                <asp:Parameter Name="STATES" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ONO" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UNO" Type="String" />
                <asp:Parameter Name="ANO" Type="String" />
                <asp:Parameter DbType="Date" Name="O_DATE" />
                <asp:Parameter Name="DELIVERY" Type="String" />
                <asp:Parameter Name="PAYMENT" Type="String" />
                <asp:Parameter Name="TOTAL" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DEL_DATE" />
                <asp:Parameter Name="STATES" Type="String" />
                <asp:Parameter Name="ONO" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
