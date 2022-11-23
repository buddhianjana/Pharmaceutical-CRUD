<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addtender.aspx.cs" Inherits="SPC_soc.Addtender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/AddTender.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

              <header>
        <p class="logo">SPC PHARMACIES</p>  
    </header>

    <br><br><br><br><br><br><br><br>

    <div>
    <p class="wctxt">Add Tender</p>
    </div>  

    <br>

    <div class="container">
  
       
        
        <form>
            <asp:TextBox ID="TextBox2" placeholder="Tender Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Tender Name Can't be Blank"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox3" placeholder="Date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Date Can't be Blank"></asp:RequiredFieldValidator>
            

        </form>

        <div>
            <br />
            <br />
            <asp:Button class="fbtn" ID="Button1" runat="server" Text="Add Tender" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
    
        
      </div>


        </div>
    </form>
</body>
</html>
