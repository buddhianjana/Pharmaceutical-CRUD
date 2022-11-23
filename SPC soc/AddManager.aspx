<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddManager.aspx.cs" Inherits="SPC_soc.AddManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/AddManager.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <header>
        <p class="logo">SPC PHARMACIES</p>  
    </header>

    <br><br><br><br><br><br><br><br>

    <div>
    <p class="wctxt">Add Manager</p>
    </div>  

    <br>

    <div class="container">
  
       
        
        <form>
          
          <div class="group"><asp:TextBox ID="TextBox1" placeholder="Name" runat="server"></asp:TextBox>  
              <%--<br />--%>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Name Can't be Blank"></asp:RequiredFieldValidator>
          </div>
          <div class="group"><asp:TextBox ID="TextBox2" placeholder="Email" runat="server"></asp:TextBox>  
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Email Can't be Blank"></asp:RequiredFieldValidator>
          </div>
          <div class="group"><asp:TextBox ID="TextBox3" placeholder="Password" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="password Can't be Blank"></asp:RequiredFieldValidator>
          </div>
          <div class="group"><asp:TextBox ID="TextBox4" placeholder="Confirm Password" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="Confrm Password Can't be Blank"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Confirm Password && Password Must be Match"></asp:CompareValidator>

          </div>

        </form>

        <div>
            <asp:Button class="fbtn" ID="Button1" runat="server" Text="Add Manager" OnClick="Button1_Click" />

        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
        
      </div>


        </div>
    </form>
</body>
</html>
