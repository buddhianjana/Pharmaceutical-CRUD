<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStock.aspx.cs" Inherits="SPC_soc.UpdateStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/UpdateStock.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

              <header>
        <p class="logo">SPC PHARMACIES</p>  
    </header>

    <br><br><br><br><br><br><br><br>

    <div>
    <p class="wctxt">Update Stock</p>
    </div>  

    <br>

    <div class="container">
  
       
        
        <form>
            <asp:TextBox ID="TextBox1" placeholder="Search Stock Here" runat="server"></asp:TextBox>    
        </form>

        <div>
            <asp:Button class="fbtn" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            
        </div>
            
    
        
      </div>

       
    
        <br>
    
        <div class="container">
      
           
            
            <form>
              
              <asp:TextBox ID="TextBox2" placeholder="Update Stock Here" runat="server"></asp:TextBox>    
                
            </form>
    
            <div>
               <asp:Button class="fbtn" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            </div>
                
        
            
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
        </div>
    </form>
</body>
</html>
