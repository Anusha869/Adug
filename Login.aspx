<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="adug.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet"  href="css/custom.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
    <div align="center" class="container jumbotron bg-light boxshadow" style="width:35%">
    <form>
        <div class="card-header-pills bg-dark text-white">
            <h2>Login Page</h2>
        </div>
        <div class="form-group" style=" width:80%">
            <label class="text-dark" for="usernamrLabel">Username</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text"></div>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
         <div class="form-group">
            <label class="text-dark" for="passLabel">Password</label>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
        </div>
        <div class=" form-group form-check">
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-input"/>
            <label class="form-check-label" for="passLabel">Remember me?</label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="Login_click"/>
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link">Forget Password?</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-link">New User!</asp:LinkButton>
            </div>
        </form>
    </form>
</body>
</html>
