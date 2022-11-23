<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffHome.aspx.cs" Inherits="SPC_soc.StaffHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Staffhome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

 <header>
        <p class="logo">SPC PHARMACIES</p>  
    </header>

    <br><br><br><br><br><br><br>

    <div>
    <p class="wctxt">Welcome Back Staff</p>
    </div>  

    <br>

    <div class="functions">
        

        


        <a href="AddStock.aspx"><asp:Label ID="Label3" class="fbtn" runat="server" Text="Add Stock"></asp:Label></a>
        <br><br><br>
        <a href="SearchStock.aspx"><asp:Label ID="Label1" class="fbtn" runat="server" Text="Search Stock"></asp:Label></a>
        <br><br><br>
        <a href="UpdateStock.aspx"><asp:Label ID="Label2" class="fbtn" runat="server" Text="Update Stock"></asp:Label></a>
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
