<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="People.aspx.cs" Inherits="People" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-1.11.2.js"></script>
    <script  language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#ContentPlaceHolder1_GridView1 tbody tr").click(function () {
                alert("hhhh");
                $(this).remove();
            });

        })
           /* $.ajax({
                url: 'PeopleService.asmx/Getpeople',
                method: 'post',
                dataType: 'json',
                success: function (data) {
                    $('#datatable').dataTable({
                        paging: true,
                        sort: true,
                        searching: true,
                        scrollY: 200,
                        data: data,
                        columns: [
                            { 'data': 'Id' },
                            { 'data': 'FirstName' },
                            { 'data': 'LastName' },
                            { 'data': 'DateofBirth' },
                            { 'data': 'CellPhone' },
                            { 'data': 'Email' },
                            { 'data': 'Address' },
                            { 'data': 'Apartment' },
                            { 'data': 'City' },
                            { 'data': 'State' },
                            {
                                'data': 'WebSite',
                                'sortable': false,
                                'searchable': false,
                                'render': function (webSite) {
                                    if (!webSite) {
                                        return 'N/A';
                                    }
                                    else {
                                        return '<a href=' + webSite + '>'
                                            + webSite.substr(0, 10) + '...' + '</a>';
                                    }
                                }
                            },
                           
                            
                        ]
                    });
                }
            });
        });
        /*
        
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="People">
    <h1>List of Chinese in US</h1>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#FF6C00" BorderColor="#FF6C00" BorderStyle="Dotted" BorderWidth="2px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Font-Size="12pt" Height="205px" Width="90%">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
            <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Apartment" HeaderText="Apartment" SortExpression="Apartment" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
        <FooterStyle BackColor="#FFFFFF" ForeColor="#585858" />
        <HeaderStyle BackColor="#FF6C00" Font-Bold="True" ForeColor="White" BorderColor="White" Font-Size="16pt" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle ForeColor="#585858" HorizontalAlign="Center" BorderStyle="Dotted" Height="5px" Font-Size="14pt" />
        <RowStyle BackColor="#FFFFFF" ForeColor="#585858" Font-Size="13pt" Height="40px"/>
        <SelectedRowStyle BackColor="#FF6C00" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFFFFF" />
        <SortedAscendingHeaderStyle BackColor="#FF6C00" />
        <SortedDescendingCellStyle BackColor="#FFFFFF" />
        <SortedDescendingHeaderStyle BackColor="#FF6C00" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblList] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblList] ([FirstName], [LastName], [DateofBirth], [CellPhone], [Email], [Address], [Apartment], [City], [State]) VALUES (@FirstName, @LastName, @DateofBirth, @CellPhone, @Email, @Address, @Apartment, @City, @State)" SelectCommand="SELECT * FROM [tblList]" UpdateCommand="UPDATE [tblList] SET [FirstName] = @FirstName, [LastName] = @LastName, [DateofBirth] = @DateofBirth, [CellPhone] = @CellPhone, [Email] = @Email, [Address] = @Address, [Apartment] = @Apartment, [City] = @City, [State] = @State WHERE [Id] = @Id">
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

    <p id="back"><a href="#top">Bact to top</a></p>
</section>
</asp:Content>

