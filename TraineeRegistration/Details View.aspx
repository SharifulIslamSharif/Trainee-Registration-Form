<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details View.aspx.cs" Inherits="TraineeRegistration.Details_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TraineeInfoDBConnectionString4 %>" DeleteCommand="DELETE FROM [Trainee_Details] WHERE [Trainee_ID] = @original_Trainee_ID AND (([Trainee_Name] = @original_Trainee_Name) OR ([Trainee_Name] IS NULL AND @original_Trainee_Name IS NULL)) AND (([Batch_Name] = @original_Batch_Name) OR ([Batch_Name] IS NULL AND @original_Batch_Name IS NULL)) AND (([Gender_Name] = @original_Gender_Name) OR ([Gender_Name] IS NULL AND @original_Gender_Name IS NULL)) AND (([Trainee_DOB] = @original_Trainee_DOB) OR ([Trainee_DOB] IS NULL AND @original_Trainee_DOB IS NULL)) AND (([Trainee_Address] = @original_Trainee_Address) OR ([Trainee_Address] IS NULL AND @original_Trainee_Address IS NULL)) AND (([Trainee_Email] = @original_Trainee_Email) OR ([Trainee_Email] IS NULL AND @original_Trainee_Email IS NULL)) AND (([Trainee_Contact] = @original_Trainee_Contact) OR ([Trainee_Contact] IS NULL AND @original_Trainee_Contact IS NULL)) AND (([Trainee_Picture] = @original_Trainee_Picture) OR ([Trainee_Picture] IS NULL AND @original_Trainee_Picture IS NULL))" InsertCommand="INSERT INTO [Trainee_Details] ([Trainee_Name], [Batch_Name], [Gender_Name], [Trainee_DOB], [Trainee_Address], [Trainee_Email], [Trainee_Contact], [Trainee_Picture]) VALUES (@Trainee_Name, @Batch_Name, @Gender_Name, @Trainee_DOB, @Trainee_Address, @Trainee_Email, @Trainee_Contact, @Trainee_Picture)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Trainee_Details]" UpdateCommand="UPDATE [Trainee_Details] SET [Trainee_Name] = @Trainee_Name, [Batch_Name] = @Batch_Name, [Gender_Name] = @Gender_Name, [Trainee_DOB] = @Trainee_DOB, [Trainee_Address] = @Trainee_Address, [Trainee_Email] = @Trainee_Email, [Trainee_Contact] = @Trainee_Contact, [Trainee_Picture] = @Trainee_Picture WHERE [Trainee_ID] = @original_Trainee_ID AND (([Trainee_Name] = @original_Trainee_Name) OR ([Trainee_Name] IS NULL AND @original_Trainee_Name IS NULL)) AND (([Batch_Name] = @original_Batch_Name) OR ([Batch_Name] IS NULL AND @original_Batch_Name IS NULL)) AND (([Gender_Name] = @original_Gender_Name) OR ([Gender_Name] IS NULL AND @original_Gender_Name IS NULL)) AND (([Trainee_DOB] = @original_Trainee_DOB) OR ([Trainee_DOB] IS NULL AND @original_Trainee_DOB IS NULL)) AND (([Trainee_Address] = @original_Trainee_Address) OR ([Trainee_Address] IS NULL AND @original_Trainee_Address IS NULL)) AND (([Trainee_Email] = @original_Trainee_Email) OR ([Trainee_Email] IS NULL AND @original_Trainee_Email IS NULL)) AND (([Trainee_Contact] = @original_Trainee_Contact) OR ([Trainee_Contact] IS NULL AND @original_Trainee_Contact IS NULL)) AND (([Trainee_Picture] = @original_Trainee_Picture) OR ([Trainee_Picture] IS NULL AND @original_Trainee_Picture IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Trainee_ID" Type="Int32" />
            <asp:Parameter Name="original_Trainee_Name" Type="String" />
            <asp:Parameter Name="original_Batch_Name" Type="String" />
            <asp:Parameter Name="original_Gender_Name" Type="String" />
            <asp:Parameter Name="original_Trainee_DOB" Type="String" />
            <asp:Parameter Name="original_Trainee_Address" Type="String" />
            <asp:Parameter Name="original_Trainee_Email" Type="String" />
            <asp:Parameter Name="original_Trainee_Contact" Type="Int32" />
            <asp:Parameter Name="original_Trainee_Picture" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Trainee_Name" Type="String" />
            <asp:Parameter Name="Batch_Name" Type="String" />
            <asp:Parameter Name="Gender_Name" Type="String" />
            <asp:Parameter Name="Trainee_DOB" Type="String" />
            <asp:Parameter Name="Trainee_Address" Type="String" />
            <asp:Parameter Name="Trainee_Email" Type="String" />
            <asp:Parameter Name="Trainee_Contact" Type="Int32" />
            <asp:Parameter Name="Trainee_Picture" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Trainee_Name" Type="String" />
            <asp:Parameter Name="Batch_Name" Type="String" />
            <asp:Parameter Name="Gender_Name" Type="String" />
            <asp:Parameter Name="Trainee_DOB" Type="String" />
            <asp:Parameter Name="Trainee_Address" Type="String" />
            <asp:Parameter Name="Trainee_Email" Type="String" />
            <asp:Parameter Name="Trainee_Contact" Type="Int32" />
            <asp:Parameter Name="Trainee_Picture" Type="String" />
            <asp:Parameter Name="original_Trainee_ID" Type="Int32" />
            <asp:Parameter Name="original_Trainee_Name" Type="String" />
            <asp:Parameter Name="original_Batch_Name" Type="String" />
            <asp:Parameter Name="original_Gender_Name" Type="String" />
            <asp:Parameter Name="original_Trainee_DOB" Type="String" />
            <asp:Parameter Name="original_Trainee_Address" Type="String" />
            <asp:Parameter Name="original_Trainee_Email" Type="String" />
            <asp:Parameter Name="original_Trainee_Contact" Type="Int32" />
            <asp:Parameter Name="original_Trainee_Picture" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" style="margin-left: 450px" runat="server" Height="16px" Width="569px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="Trainee_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Trainee_ID" HeaderText="Trainee ID" InsertVisible="False" ReadOnly="True" SortExpression="Trainee_ID" />
            <asp:BoundField DataField="Trainee_Name" HeaderText="Name" SortExpression="Trainee_Name" />
            <asp:BoundField DataField="Batch_Name" HeaderText="Batch" SortExpression="Batch_Name" />
            <asp:BoundField DataField="Gender_Name" HeaderText="Gender" SortExpression="Gender_Name" />
            <asp:BoundField DataField="Trainee_DOB" HeaderText="Date Of Birth" SortExpression="Trainee_DOB" />
            <asp:BoundField DataField="Trainee_Address" HeaderText="Address" SortExpression="Trainee_Address" />
            <asp:BoundField DataField="Trainee_Email" HeaderText="Email" SortExpression="Trainee_Email" />
            <asp:BoundField DataField="Trainee_Contact" HeaderText="Contact" SortExpression="Trainee_Contact" />
            <asp:BoundField DataField="Trainee_Picture" HeaderText="Picture" SortExpression="Trainee_Picture" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>
