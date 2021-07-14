<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="TraineeRegistration.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" style="margin-left: 450px" runat="server" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Gender_Name" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Height="237px" Width="472px">
        <EditItemTemplate>
            Gender_ID:
            <asp:Label ID="Gender_IDLabel1" runat="server" Text='<%# Eval("Gender_ID") %>' />
            <br />
            Gender_Name:
            <asp:Label ID="Gender_NameLabel1" runat="server" Text='<%# Eval("Gender_Name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Gender_Name:
            <asp:TextBox ID="Gender_NameTextBox" runat="server" Text='<%# Bind("Gender_Name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Gender_ID:
            <asp:Label ID="Gender_IDLabel" runat="server" Text='<%# Eval("Gender_ID") %>' />
            <br />
            Gender_Name:
            <asp:Label ID="Gender_NameLabel" runat="server" Text='<%# Eval("Gender_Name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TraineeInfoDBConnectionString5 %>" DeleteCommand="DELETE FROM [Gender] WHERE [Gender_Name] = @original_Gender_Name AND [Gender_ID] = @original_Gender_ID" InsertCommand="INSERT INTO [Gender] ([Gender_Name]) VALUES (@Gender_Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Gender]" UpdateCommand="UPDATE [Gender] SET [Gender_ID] = @Gender_ID WHERE [Gender_Name] = @original_Gender_Name AND [Gender_ID] = @original_Gender_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_Gender_Name" Type="String" />
            <asp:Parameter Name="original_Gender_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Gender_Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Gender_ID" Type="Int32" />
            <asp:Parameter Name="original_Gender_Name" Type="String" />
            <asp:Parameter Name="original_Gender_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
