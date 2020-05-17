<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminfinderMasterPage.master" AutoEventWireup="true" CodeFile="UPLOAD DATA.aspx.cs" Inherits="admin_UPLOAD_DATA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 51px;
        }
    </style>
    <script src="../js/bootstap.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="upload%20data%20css.css" rel="stylesheet" />
    <form id="form1" runat="server" style="margin-left:300px;">
        
           
           <h1 id="dashboard" style="font-weight:bold;">DASHBOARD</h1>
        <table class="nav-justified">
            <tr>
                <th>TITLE</th>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Style="border-radius:5px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>DESCRIPTION</th>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Style="border-radius:5px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>UPLOAD_IMAGE</th>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server"/>
                </td>
            </tr>
            <tr>
                <th>LINKS</th>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Style="border-radius:5px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th class="auto-style1">KEYWORDS</th>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox4" runat="server" Style="border-radius:5px;"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Style="border-radius:5px;"/>
                    <br />
                </td>
            </tr>
            <tr>
                <td>    
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />

                            <asp:BoundField DataField="uploadimage" HeaderText="uploadimage" SortExpression="uploadimage" Visible="false" />
                            <asp:ImageField HeaderText="Image" DataImageUrlField="uploadimage" DataImageUrlFormatString="../dataimg/{0}" ControlStyle-Height="100px" ></asp:ImageField>
                            
                            <asp:BoundField DataField="links" HeaderText="links" SortExpression="links" />
                            <asp:BoundField DataField="keywords" HeaderText="keywords" SortExpression="keywords" />
                            <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finderthesearchenginedbConnectionString %>" DeleteCommand="DELETE FROM [inputdatas] WHERE [id] = @id" InsertCommand="INSERT INTO [inputdatas] ([title], [description], [uploadimage], [links], [keywords], [datetime]) VALUES (@title, @description, @uploadimage, @links, @keywords, @datetime)" SelectCommand="SELECT * FROM [inputdatas] ORDER BY [id] DESC" UpdateCommand="UPDATE [inputdatas] SET [title] = @title, [description] = @description, [uploadimage] = @uploadimage, [links] = @links, [keywords] = @keywords, [datetime] = @datetime WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="uploadimage" Type="String" />
                            <asp:Parameter Name="links" Type="String" />
                            <asp:Parameter Name="keywords" Type="String" />
                            <asp:Parameter Name="datetime" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="uploadimage" Type="String" />
                            <asp:Parameter Name="links" Type="String" />
                            <asp:Parameter Name="keywords" Type="String" />
                            <asp:Parameter Name="datetime" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

