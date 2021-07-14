<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Batch.aspx.cs" Inherits="TraineeRegistration.Batch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Batch_Name" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Batch_IDLabel" runat="server" Text='<%# Eval("Batch_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Batch_NameLabel" runat="server" Text='<%# Eval("Batch_Name") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="Batch_IDLabel1" runat="server" Text='<%# Eval("Batch_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Batch_NameLabel1" runat="server" Text='<%# Eval("Batch_Name") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="Batch_NameTextBox" runat="server" Text='<%# Bind("Batch_Name") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Batch_IDLabel" runat="server" Text='<%# Eval("Batch_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Batch_NameLabel" runat="server" Text='<%# Eval("Batch_Name") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">Batch_ID</th>
                                <th runat="server">Batch_Name</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Batch_IDLabel" runat="server" Text='<%# Eval("Batch_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Batch_NameLabel" runat="server" Text='<%# Eval("Batch_Name") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TraineeInfoDBConnectionString5 %>" DeleteCommand="DELETE FROM [Batch] WHERE [Batch_Name] = @original_Batch_Name AND [Batch_ID] = @original_Batch_ID" InsertCommand="INSERT INTO [Batch] ([Batch_Name]) VALUES (@Batch_Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Batch]" UpdateCommand="UPDATE [Batch] SET [Batch_ID] = @Batch_ID WHERE [Batch_Name] = @original_Batch_Name AND [Batch_ID] = @original_Batch_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_Batch_Name" Type="String" />
            <asp:Parameter Name="original_Batch_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Batch_Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Batch_ID" Type="Int32" />
            <asp:Parameter Name="original_Batch_Name" Type="String" />
            <asp:Parameter Name="original_Batch_ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

    </asp:Content>
