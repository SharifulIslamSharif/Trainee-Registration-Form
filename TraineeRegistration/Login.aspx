<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TraineeRegistration.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form class="bg-light" id="form1" runat="server">
        <div class="container col-sm-4 pt-5 border border-success rounded mt-5">
            <h5 class="text-danger">If you not registrated</h5>
            <h4 class="text-success"><a href="Registration.aspx">Go to registration</a></h4>
            <h3 class="text-black">Allready Regitrated</h3>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TrName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TrName" Display="Dynamic" ErrorMessage="Enter your name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TrPass" type="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TrPass" Display="Dynamic" ErrorMessage="Enter your password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>

