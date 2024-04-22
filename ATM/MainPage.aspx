<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ATM.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .container{
            display:flex;
        }
        .auto-style1 {
            height: 64px;
            width: 73px;
        }
        .auto-style2 {
            height: 70px;
            width: 86%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="background-color: #333333">
            <div><img src="Images/login_icon.png"  class="auto-style1" style="border: thick solid #0033CC; height: 70px" /></div>
           <div style="width: 90%; text-align: center; padding-top: 10px;"> <asp:Label ID="Label2" runat="server" Font-Names="Algerian" Font-Size="X-Large" ForeColor="White" Text="Account Number : "></asp:Label>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="XX-Large" ForeColor="White"></asp:Label>
               </div>
            <div>
               <a href="Login.aspx"> <img src="Images/logout_img.jpg" aria-selected="false" style="border: thick solid #0033CC; height: 75px; width: 70px; margin-left: 2px;" /></a>
            </div>
        </div>
        <div class="container">
        <div  style="border: thick solid #993300; background-color: #C0C0C0; height: 230px; width: 65%; text-align: center; vertical-align: middle;">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large" Text="Name : "></asp:Label>
            &nbsp;<asp:Label ID="name" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large" Text="Branch : "></asp:Label>
            &nbsp;<asp:Label ID="branch" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large" Text="IFSC CODE : "></asp:Label>
            &nbsp;<asp:Label ID="ifsc" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="validity" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large" Text="CARD VALIDITY : "></asp:Label>
            <asp:Label ID="cvalidity" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large"></asp:Label>
            <br />
            &nbsp;<br />
        </div>
            <div style="background-color: #C0C0C0">
                <img src="Images/banking.jpeg" style="border: thick solid #000066; width: 99%; right: 10px; height: 230px; vertical-align: middle; text-align: center;" />
            </div>
            </div>
       
            <div style="background-color: #C0C0C0; height: 50px; width: 100%; padding-top: 20px;">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large" Text="TRANSITION DETAILS"></asp:Label>
            &nbsp;</div>
            
        <div>

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

        </div>

    </form>
</body>
</html>
