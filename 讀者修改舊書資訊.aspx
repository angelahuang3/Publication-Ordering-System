<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="讀者修改舊書資訊.aspx.cs" Inherits="GO書系統頁面.WebForm10" %>

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
        <div>
        	<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BNO,CATEGORY" DataSourceID="SqlDataSource2" Font-Names="微軟正黑體" Height="291px" Width="430px">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="BNO" HeaderText="BNO" ReadOnly="True" SortExpression="BNO" />
					<asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" ReadOnly="True" SortExpression="CATEGORY" />
					<asp:BoundField DataField="GNO" HeaderText="GNO" SortExpression="GNO" />
					<asp:BoundField DataField="B_PRICE" HeaderText="B_PRICE" SortExpression="B_PRICE" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB01ConnectionString32 %>" DeleteCommand="DELETE FROM [INVENTORY] WHERE [BNO] = @BNO AND [CATEGORY] = @CATEGORY" InsertCommand="INSERT INTO [INVENTORY] ([BNO], [CATEGORY], [GNO], [B_PRICE]) VALUES (@BNO, @CATEGORY, @GNO, @B_PRICE)" SelectCommand="SELECT * FROM [INVENTORY]" UpdateCommand="UPDATE [INVENTORY] SET [GNO] = @GNO, [B_PRICE] = @B_PRICE WHERE [BNO] = @BNO AND [CATEGORY] = @CATEGORY">
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
				<UpdateParameters>
					<asp:Parameter Name="GNO" Type="String" />
					<asp:Parameter Name="B_PRICE" Type="Int32" />
					<asp:Parameter Name="BNO" Type="String" />
					<asp:Parameter Name="CATEGORY" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
			<br />
       
    	<br />
    </form>
</body>
</html>
