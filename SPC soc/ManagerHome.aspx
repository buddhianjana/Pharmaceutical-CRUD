<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerHome.aspx.cs" Inherits="SPC_soc.ManagerHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Managerhome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <header>
        <p class="logo">SPC PHARMACIES</p>
    </header>

    <br><br><br><br><br><br><br>

    <div>
        <p class="wctxt">Welcome Back Manager</p>
    </div>

    <br>

    <div class="functions">

        <a href="AddSupplier.aspx">
            <asp:Label ID="Label1" CssClass="fbtn" runat="server" Text="Add Supplier"></asp:Label></a>
        <br><br><br>
        <a href="AddManager.aspx"><asp:Label ID="Label2" CssClass="fbtn" runat="server" Text="Add Manager"></asp:Label></a>
        <br><br><br>
        <a href="AddStaff.aspx"> <asp:Label ID="Label3" CssClass="fbtn" runat="server" Text="Add Staff"></asp:Label></a>
        <br><br><br>
        <a href="AddStock.aspx">
             <asp:Label ID="Label6" CssClass="fbtn" runat="server" Text="Add Stock"></asp:Label></a>
        <br><br><br>
        <a href="SearchStock.aspx"> 
            <asp:Label ID="Label7" CssClass="fbtn" runat="server" Text="Search Stock"></asp:Label></a>
        <br><br><br>
        <a href="UpdateStock.aspx">
            <asp:Label ID="Label8" CssClass="fbtn" runat="server" Text="Update Stock"></asp:Label></a>


    </div>
    <br>
    <footer>
        <br>
        <p class="ftext">Copyright 2022 at SPC PHARMACIES. All right reserved</p>
    </footer>
        </div>
    </form>
</body>
</html>
