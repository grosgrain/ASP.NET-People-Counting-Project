<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="Add">
    <h1>Add your information</h1>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="32px" Width="493px" AutoGenerateRows="False" BorderColor="#FF6C00" BorderStyle="Solid" BorderWidth="5px" DataKeyNames="Id" DataSourceID="SqlDataSource2" DefaultMode="Insert" Font-Bold="True" Font-Size="14pt" OnItemInserted="DetailsView1_ItemInserted" ValidateRequestMode="Enabled">
        <Fields>
            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="TextBox1" Text="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>             
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="TextBox2" Text="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date of Birth" SortExpression="DateofBirth">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DateofBirth") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DateofBirth", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your date of birth" Text="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please following format MM/DD/YYYY" ControlToValidate="TextBox3" Text="*" ValidationExpression="^(1[0-2]|0[1-9])/(3[01]|[12][0-9]|0[1-9])/[0-9]{4}$"></asp:RegularExpressionValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter validate date" MaximumValue="12/31/2099" MinimumValue="01/01/1900" Text="*" ControlToValidate="TextBox3"></asp:RangeValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("DateofBirth", "{0:MM/dd/yyyy}") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cell Phone" SortExpression="CellPhone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CellPhone") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CellPhone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter you cell phone number" Text="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please following format XXX-XXX-XXXX" ControlToValidate="TextBox4" Text="*" ValidationExpression="[0-9A-Z]{3}-[0-9A-Z]{3}-[0-9A-Z]{4}"></asp:RegularExpressionValidator>
                 </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CellPhone") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" HorizontalAlign="Center" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="E-mail" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your E-mail" ControlToValidate="TextBox5" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter valid E-mail" Text="*" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" HorizontalAlign="Center" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter your address" ControlToValidate="TextBox6" Text="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" HorizontalAlign="Center" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:BoundField DataField="Apartment" HeaderText="Apartment" SortExpression="Apartment" ItemStyle-BorderColor="#FF6C00"  ItemStyle-BorderStyle="Dashed" ItemStyle-BorderWidth="2px" HeaderStyle-BorderColor="#FF6C00" HeaderStyle-BorderStyle="Dashed" HeaderStyle-BorderWidth="2px" HeaderStyle-BackColor="#9C9C9C" HeaderStyle-ForeColor="White">
<HeaderStyle HorizontalAlign="Center" BackColor="#9C9C9C" BorderColor="#FF6C00" BorderWidth="2px" BorderStyle="Dashed" ForeColor="White"></HeaderStyle>

<ItemStyle BorderColor="#FF6C00" BorderWidth="2px" BorderStyle="Dashed"></ItemStyle>
            </asp:BoundField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter your city" ControlToValidate="TextBox7" Text="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" HorizontalAlign="Center" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter your state" Text="*" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter valid state name (use capital letters, eg. CA)" Text="*" ControlToValidate="TextBox8" ValidationExpression='\s?[A-Z]{2}'></asp:RegularExpressionValidator>
                     </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="#9C9C9C" BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" ForeColor="White" HorizontalAlign="Center" />
                <ItemStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ItemStyle-ForeColor="#FF6C00" InsertText="Add" ItemStyle-CssClass="insert" >
<ItemStyle CssClass="insert" ForeColor="#FF6C00" HorizontalAlign="Center"></ItemStyle>
            </asp:CommandField>
        </Fields>
        <HeaderStyle HorizontalAlign="Center" BorderColor="#FF6C00" BorderStyle="Solid" BorderWidth="2px" />
        <PagerStyle BorderColor="#FF6C00" BorderStyle="Solid" BorderWidth="2px" />
        <RowStyle BorderColor="#FF6C00" BorderStyle="Dashed" BorderWidth="2px" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblList] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblList] ([FirstName], [LastName], [DateofBirth], [CellPhone], [Email], [Address], [Apartment], [City], [State]) VALUES (@FirstName, @LastName, @DateofBirth, @CellPhone, @Email, @Address, @Apartment, @City, @State)" SelectCommand="SELECT * FROM [tblList] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [tblList] SET [FirstName] = @FirstName, [LastName] = @LastName, [DateofBirth] = @DateofBirth, [CellPhone] = @CellPhone, [Email] = @Email, [Address] = @Address, [Apartment] = @Apartment, [City] = @City, [State] = @State WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="DateofBirth" Type="DateTime" />
            <asp:Parameter Name="CellPhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Apartment" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="DateofBirth" Type="DateTime" />
            <asp:Parameter Name="CellPhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Apartment" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
     <p id="back"><a href="#top">Bact to top</a></p>
</section>
</asp:Content>

