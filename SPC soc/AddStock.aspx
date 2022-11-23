<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStock.aspx.cs" Inherits="SPC_soc.AddStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/AddStock.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <header>
        <p class="logo">SPC PHARMACIES</p>  
    </header>

    <br><br><br><br><br><br><br><br>

    <div>
    <p class="wctxt">Add Stocks</p>
    </div>  

    <br>

    <div class="container">
  
       
        
        <form>
          <div class="group"><asp:TextBox ID="TextBox2" placeholder="Stock Name" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Name Can't be Blank"></asp:RequiredFieldValidator>
          </div>
          <div class="group"><asp:TextBox ID="TextBox3" placeholder="Supplier Name" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Supplier Name Can't be Blank"></asp:RequiredFieldValidator>
          </div>
          <div class="group"><asp:TextBox ID="TextBox4" placeholder="Stock Number" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="Stock Can't be Blank"></asp:RequiredFieldValidator>
          </div>
          <div class="group"><asp:TextBox ID="TextBox5" placeholder="Price" runat="server"></asp:TextBox>  
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ErrorMessage="Price Can't be Blank"></asp:RequiredFieldValidator>
          </div>
        </form>

        <div>
            <asp:Button class="fbtn" ID="Button1" runat="server" Text="Add Stock" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
        
      </div>

        </div>
    </form>
</body>
</html>
