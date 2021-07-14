<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TraineeRegistration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
     <form class="bg-light" id="form1" runat="server">
        <div class="container col-sm-4 pt-5 border border-success rounded mt-5">
            <h3 class="text-info">Registration Form</h3>
            <div class=" bg-warning">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
            <div class="form-group col-6">
                <asp:Label ID="Label1" runat="server" Text="Trainee Name"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TrName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TrName" Display="Dynamic" ErrorMessage="Please enter your name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </div>
                <div class="form-group col-6">
                    <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TrEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TrEmail" Display="Dynamic" ErrorMessage="Please enter your email address" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TrEmail" Display="Dynamic" ErrorMessage="Enter a valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                </div>
                <div class="form-group col-6">
                    <asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TrPass" type="password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TrPass" Display="Dynamic" ErrorMessage="Please enter a password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-6">
                    <asp:Label ID="Label14" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TrCPass" type="password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TrCPass" Display="Dynamic" ErrorMessage="Please reenter your password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TrPass" ControlToValidate="TrCPass" Display="Dynamic" ErrorMessage="Password don't match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </div>

            <div class="form-group ">
                <asp:Button CssClass="btn btn-success" ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
                <asp:Button CssClass="btn btn-info" ID="ResetButton" runat="server" Text="Reset" OnClick="ResetButton_Click"/>
            </div>
             <h4 class="text-success"><a href="Login.aspx">Back to Login</a></h4>

        </div>
    </form>
</body>
</html>
