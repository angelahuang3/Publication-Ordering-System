<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="登入畫面.aspx.cs" Inherits="GO書系統頁面.WebForm1" %>

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
        <p style="text-align: center">
        <div class="bg">
            <img src="img\books.jpg" >
        </div>
        <div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" imageURL="~/img/go_A-512.png" Height="221px" Width="235px" />
&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="書購書" style="text-align: center" BorderColor="#702FD0" Font-Bold="True" Font-Names="微軟正黑體" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="Black"></asp:Label>
         </p>
      
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
            <asp:Label ID="Label2" runat="server" Text="會員登入" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
        
            <br />
        
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="請選擇身分" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
            ：<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" Font-Names="微軟正黑體" Font-Size="XX-Large" BorderColor="#009933">
                <asp:ListItem>讀者</asp:ListItem>
                <asp:ListItem>出版商</asp:ListItem>
                <asp:ListItem>管理者</asp:ListItem>
            </asp:RadioButtonList>
      
        <br />
      
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="帳號：" Font-Names="微軟正黑體" Font-Size="XX-Large"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" BorderColor="#009933" Height="27px" Width="195px" ></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Font-Names="微軟正黑體" Font-Size="XX-Large" Text="密碼："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Size="Large" BorderColor="#009933" Height="25px" Width="196px"  ></asp:TextBox>
            &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red" Font-Names="微軟正黑體"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" BackColor="#99CCFF" BorderColor="#00288B" BorderStyle="Solid" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large" ForeColor="#000066" />
&nbsp;&nbsp;</p>
        <p>
            &nbsp;
       </p>
        <p>
            &nbsp;</p>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="加入讀者會員" Width="228px" OnClick="Button2_Click" BackColor="#92C3F4" BorderColor="#00288B" BorderStyle="Solid" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large" ForeColor="#00288B" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="申請出版商會員" Width="287px" OnClick="Button3_Click" BackColor="#97CAFC" BorderColor="#00288B" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large" ForeColor="#00288B" />
       
    </form>
</body>
</html>
