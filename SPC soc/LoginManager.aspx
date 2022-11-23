<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginManager.aspx.cs" Inherits="SPC_soc.LoginManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/loginmanager.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <!-- partial:index.partial.html -->
    <div class="box-form">
        <div class="left">
            <div class="overlay">
                <h1>Hello Manager!!</h1>

            </div>
        </div>


        <div class="right">
            <h5>Login</h5>
            <p>Welcome Back to log in. Please enter your username and password to continue</p>
            <div class="inputs">
                <asp:TextBox ID="Txtname" placeholder="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Txtname" runat="server" ErrorMessage="Email Can't be Blank"></asp:RequiredFieldValidator>
                <br>
               <asp:TextBox ID="Txtpass" placeholder="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Txtpass" runat="server" ErrorMessage="Password Can't be Blank"></asp:RequiredFieldValidator>
            </div>

            <br><br>



            <br>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>

    </div>
    <!-- partial -->

        </div>
    </form>
</body>
</html>
