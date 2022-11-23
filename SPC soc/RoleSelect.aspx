<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleSelect.aspx.cs" Inherits="SPC_soc.RoleSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" href="CSS/Roleselect.css">
    <title>Roleselect Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <header>
        <p class="logo">SPC PHARMACIES</p>
    </header>

    <br><br><br><br><br><br><br>

    <div>
        <p class="wctxt">Select Your Role</p>
    </div>

    <br>

    <div class="functions">

        <a href="SupplierLogin.aspx"> <asp:Label CssClass="fbtn" ID="Label1" runat="server" Text="Supplier"></asp:Label></a>
        <br><br><br>
        <a href="LoginManager.aspx"> <asp:Label ID="Label2" class="fbtn" runat="server" Text="Manager"></asp:Label></a>
        <br><br><br>
        <a href="LoginStaff.aspx"><asp:Label class="fbtn" ID="Label3" runat="server" Text="Staff"></asp:Label></a>

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
