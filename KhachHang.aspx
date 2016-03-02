<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KhachHang.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: #5bbda3;
            margin: 0 auto;
            width: 80%;
        }
        .auto-style1 {
            font-size: large;
            text-decoration: underline;
            color: #333399;
        }
        .auto-style2 {
            font-size: x-large;
            text-decoration: underline;
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <strong><span class="auto-style2">THAMNTHPD01242_ASSIGMENT<br />
        ĐIỆN TOÁN ĐÁM MÂY</span><span class="auto-style1"><br />
        <br />
        <br />
        KHÁCH HÀNG</span><br class="auto-style1" />
    
        </strong>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="text-align: center" Width="818px" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" ReadOnly="True" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ho_Ten" HeaderText="Ho_Ten" SortExpression="Ho_Ten" />
                <asp:BoundField DataField="Gioi_Tinh" HeaderText="Gioi_Tinh" SortExpression="Gioi_Tinh" />
                <asp:BoundField DataField="Dien_thoai" HeaderText="Dien_thoai" SortExpression="Dien_thoai" />
                <asp:BoundField DataField="Dia_chi" HeaderText="Dia_chi" SortExpression="Dia_chi" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
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
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource5" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnPageIndexChanging="FormView1_PageIndexChanging" Width="271px">
            <EditItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ho_Ten:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ho_TenTextBox" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:&nbsp;&nbsp;
                <asp:TextBox ID="Gioi_TinhTextBox" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:TextBox ID="Dien_thoaiTextBox" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_KH:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ho_Ten:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ho_TenTextBox" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:&nbsp;
                <asp:TextBox ID="Gioi_TinhTextBox" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:TextBox ID="Dien_thoaiTextBox" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' Width="123px" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ho_Ten:
                <asp:Label ID="Ho_TenLabel" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:
                <asp:Label ID="Gioi_TinhLabel" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:Label ID="Dien_thoaiLabel" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:
                <asp:Label ID="Dia_chiLabel" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [Ma_KH] = @Ma_KH" InsertCommand="INSERT INTO [KHACHHANG] ([Ma_KH], [Ho_Ten], [Gioi_Tinh], [Dien_thoai], [Dia_chi]) VALUES (@Ma_KH, @Ho_Ten, @Gioi_Tinh, @Dien_thoai, @Dia_chi)" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [Ho_Ten] = @Ho_Ten, [Gioi_Tinh] = @Gioi_Tinh, [Dien_thoai] = @Dien_thoai, [Dia_chi] = @Dia_chi WHERE [Ma_KH] = @Ma_KH">
            <DeleteParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ho_Ten" Type="String" />
                <asp:Parameter Name="Gioi_Tinh" Type="String" />
                <asp:Parameter Name="Dien_thoai" Type="Int32" />
                <asp:Parameter Name="Dia_chi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ho_Ten" Type="String" />
                <asp:Parameter Name="Gioi_Tinh" Type="String" />
                <asp:Parameter Name="Dien_thoai" Type="Int32" />
                <asp:Parameter Name="Dia_chi" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
