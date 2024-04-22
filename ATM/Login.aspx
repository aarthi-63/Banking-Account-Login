<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ATM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 728px;
            height: 544px;
        }
        .container {
            display: flex;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #C0C0C0">
        <asp:Label ID="Label1" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Names="Engravers MT" Font-Overline="True" Font-Size="XX-Large" ForeColor="#003399" Text="LOGIN PAGE" CssClass="auto-style1" ></asp:Label><br />
<div class="container">
        <div>
            <img alt="" class="auto-style1" src="Images/atmcard.jpg" /><br /></div>
            <div style="font-family: 'Imprint MT Shadow'; font-size: 38px; font-weight: normal; font-style: normal; color: #0000FF; background-color: #C0C0C0; padding-top: 130px; padding-left: 90px;">
                ACCOUNT NUMBER&nbsp; 
                <br />
                <asp:TextBox ID="AccNum" runat="server" BackColor="#FFCC99" Height="35px" Width="284px" ></asp:TextBox>
                <br />
                <br />
                PASSWORD<br />
                <asp:TextBox ID="password" runat="server" BackColor="#FFCC99" Height="35px" Width="281px"></asp:TextBox>
                <br />
                <asp:Label ID="result" runat="server" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#CC3300"></asp:Label>
                <br />
                <asp:Button ID="Mainlogin" runat="server" Text="LOGIN" BackColor="Red" BorderColor="#CCFFFF" ForeColor="White" Height="49px" Width="125px" OnClick="Mainlogin_Click" />
                <br />
            </div>
        </div>
            
    </form>
    </body>
</html>
