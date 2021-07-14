<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Trainee.aspx.cs" Inherits="TraineeRegistration.Trainee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#ContentPlaceHolder1_txt_DOB").datepicker();
        });
    </script>
    <style type="text/css">
        
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <div>
        <h1 style="padding: 5px 6px 15px 5px; font-family: 'Times New Roman'; color:black; font-size: x-large; border-bottom-style: solid; height: 50px; width: 1520px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color:dimgrey; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><strong style="padding: 5px 5px 5px 5px; font-family: 'Times New Roman'; font-size: xx-large;">Trainee's Information</strong></h1>
    </div>
    <fieldset id="UpdatePanel1" runat="server">
        <div class="panel panel-group">
            <div class="form-horizontal" style="font-family: 'Times New Roman'; width: 1150px;">
                <div class="form-group"  color: #800080;">
                    <p style="font-weight: 700 ; color: red;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Input Your All Information...!!!!</p>
                </div>
                <div class="auto-style2">
                    <div>
                     <p style="margin-left: 300px">
                            <label runat="server" for="txt_Name">Name</label>
                            <asp:TextBox ID="txt_Name" runat="server" Height="30px" CssClass="form-control-static input-sm" Enabled="true" Style="margin-left: 218px" Width="400px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Name" Display="Dynamic" ErrorMessage="Required, must input your Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </p>
                    </div>
                </div>
                <div class="form-group" style="text-align: center">
                    <div class="auto-style2">
                        <p style="margin-left: 300px">
                            <label runat="server" for="ddl_Batch">Batch ID:</label>
                            <asp:DropDownList ID="ddl_Batch" runat="server" Height="30px" Style="margin-left: 193px" Width="400px" DataSourceID="SqlDataSource2" DataTextField="Batch_Name" DataValueField="Batch_Name"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TraineeInfoDBConnectionString %>" SelectCommand="SELECT [Batch_Name] FROM [Batch]"></asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddl_Batch" Display="Dynamic" ErrorMessage="Required, must select a Batch ID" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </p>
                    </div>
                </div>

                <div class="form-group" style="text-align: center">
                    <div class="auto-style2">
                        <p style="margin-left: 300px">
                            <label runat="server" for="ddl_Gender">Gender</label>
                            <asp:DropDownList ID="ddl_Gender" runat="server" Height="30px" Style="margin-left: 209px" Width="400px" DataSourceID="SqlDataSource3" DataTextField="Gender_Name" DataValueField="Gender_Name"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TraineeInfoDBConnectionString2 %>" SelectCommand="SELECT [Gender_Name] FROM [Gender]"></asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddl_Gender" Display="Dynamic" ErrorMessage="Required, must select a type of Gender" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </p>
                    </div>
                </div>
                <div>
                    <p style="margin-left: 300px">
                        <label runat="server" for="txt_DOB">Date Of Birth</label>
                        <asp:TextBox ID="txt_DOB" runat="server" Height="30px" AutoCompleteType="Disabled" CssClass="form-control-static input-sm" Enabled="true" Style="margin-left: 168px" Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_DOB" Display="Dynamic" ErrorMessage="Required, must input your Date of Birth" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="auto-style2">
                    <div>
                        <p style="margin-left: 300px">
                            <label runat="server" for="txt_Address">Address</label>
                            <asp:TextBox ID="txt_Address" runat="server" Height="30px" CssClass="form-control-static input-sm" Enabled="true" Style="margin-left: 204px" Width="400px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_Address" Display="Dynamic" ErrorMessage="Required, must input your Address" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </p>
                    </div>
                </div>

                <div>
                    <p style="margin-left: 300px">
                        <label runat="server" for="txt_Email">Email</label>
                        <asp:TextBox ID="txt_Email" runat="server" Height="30px" CssClass="form-control-static input-sm" Enabled="true" Style="margin-left: 218px" Width="400px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Required, input your valid Email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div>
                    <p style="margin-left: 300px">
                        <label runat="server" for="txt_Contact">Contact</label>
                        <asp:TextBox ID="txt_Contact" runat="server" Height="30px" CssClass="form-control-static input-sm" Enabled="true" Style="margin-left: 207px" Width="400px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_Contact" Display="Dynamic" ErrorMessage="Required, input your Contact" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="auto-style2">
                    <div>
                        <p style="margin-left: 300px">
                            Upload Your Picture
                            <asp:Label ID="LabelForId" runat="server" Visible="false" Text='<%# Eval("LabelForId") %>'></asp:Label>
                            <asp:Image ID="GetImage" Height="50" Width="50" Visible="false" runat="server" />
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" CssClass="form-control-static input-sm" Style="margin-left: 225px" Width="400px" />
                            <asp:Label ID="lblValidation" runat="server"></asp:Label>
                        </p>
                    </div>
                </div>
                <div class="form-group" style="text-align: center">
                    <label runat="server" class="col-md-2 control-label" style="left: 120px; top: 18px">
                    </label>


                    <div class="col-md-10" Style="margin-left: 280px">
                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-info" Text="Save" Width="100px" OnClick="btnSave_Click" />&nbsp;
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-info" Text="Update" Width="100px" OnClick="btnUpdate_Click" />&nbsp;
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-info" Text="Delete" Width="100px" OnClick="btnDelete_Click" />&nbsp;
                            <asp:Button ID="btnReset" runat="server" CssClass="btn btn-info" Text="Reset" Width="100px" OnClick="btnReset_Click" />
                    </div>
                </div>
            </div>
            <div style="text-align: center">
                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </fieldset>
    <div>
        <h1 class="text-center" style="padding: 5px 6px 15px 5px; font-family: 'Times New Roman'; color: black; font-size: xx-large; border-bottom-style: solid; height: 50px; width: 1520px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color: dimgrey; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><span style="padding: 5px 5px 5px 5px; font-family: 'Times New Roman';"><strong>Trainee's Status Grid View List</strong></span></h1>
    <div>
        <asp:GridView ID="GridView1" style="margin-left: 80px" runat="server" AutoGenerateColumns="False" DataKeyNames="Trainee_ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1360px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Trainee ID">
                    <ItemTemplate>
                            <asp:Label ID="TID" runat="server" Text='<%# Eval("Trainee_ID") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                            <asp:Label ID="TName" runat="server" Text='<%# Eval("Trainee_Name") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Batch ID">
                    <ItemTemplate>
                            <asp:Label ID="TBatch" runat="server" Text='<%# Eval("Batch_Name") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                            <asp:Label ID="TGender" runat="server" Text='<%# Eval("Gender_Name") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Of Birth">
                    <ItemTemplate>
                            <asp:Label ID="TDOB" runat="server" Text='<%# Eval("Trainee_DOB") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                            <asp:Label ID="TAddress" runat="server" Text='<%# Eval("Trainee_Address") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                            <asp:Label ID="TEmail" runat="server" Text='<%# Eval("Trainee_Email") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                            <asp:Label ID="TContact" runat="server" Text='<%# Eval("Trainee_Contact") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Picture">
                    <ItemTemplate>
                        <asp:Image ID="TPicture" Width="100" Height="100" ImageUrl='<%# Eval("Trainee_Picture") %>' runat="server" />                      
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="Action" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TraineeInfoDBConnectionString2 %>" SelectCommand="SELECT * FROM [Trainee_Details]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TraineeConnectionString %>" SelectCommand="SELECT * FROM [Trainee_Details]"></asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
