<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchStock.aspx.cs" Inherits="SPC_soc.SearchStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/SearchStock.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <header>
        <p class="logo">SPC PHARMACIES</p>  
    </header>

    <br><br><br><br><br><br><br><br>

    <div>
    <p class="wctxt">Search Stock</p>
    </div>  

    <br>

    <div class="container">
  
       
        
        </div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Stock"></asp:TextBox>
            <br />
            <asp:Button class="fbtn" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />

        <div>
            <br />
            
        </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="105px" Width="1112px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
            
    
        
      </form>
            
    
        
      </div>


        </div>
    </form>
</body>
</html>
