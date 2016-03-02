<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
            text-decoration: underline;
            color: #CC0000;
        }
        .auto-style1 {
            font-size: large;
            text-decoration: underline;
            color: #333399;
        }
        .auto-style3 {
            font-size: large;
            text-decoration: underline;
            color: #3333CC;
        }
        .auto-style4 {
            color: #3333CC;
            text-decoration: underline;
        }
        .auto-style5 {
            text-align: center;
        }
     
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
    <p class="auto-style5">
    
        <strong><span class="auto-style2">THAMNTHPD01242_ASSIGMENT<br />
        ĐIỆN TOÁN ĐÁM MÂY</span></strong></p>
    <p class="auto-style5">
        <strong><span class="auto-style4">HÓA </span><span class="auto-style3">ĐƠN</span><span class="auto-style1"><br />
&nbsp;</span></strong></p>
    <form id="form1" runat="server">
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource2" Width="880px" style="text-align: center">
                <Columns>
                    <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" ReadOnly="True" SortExpression="Ma_HD" />
                    <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" SortExpression="Ma_KH" />
                    <asp:BoundField DataField="Ngay_lap_HD" HeaderText="Ngay_lap_HD" SortExpression="Ngay_lap_HD" />
                    <asp:BoundField DataField="Dia_chi" HeaderText="Dia_chi" SortExpression="Dia_chi" />
                    <asp:CommandField />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [HOADON] WHERE [Ma_HD] = @Ma_HD" InsertCommand="INSERT INTO [HOADON] ([Ma_HD], [Ma_KH], [Ngay_lap_HD], [Dia_chi]) VALUES (@Ma_HD, @Ma_KH, @Ngay_lap_HD, @Dia_chi)" SelectCommand="SELECT * FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [Ma_KH] = @Ma_KH, [Ngay_lap_HD] = @Ngay_lap_HD, [Dia_chi] = @Dia_chi WHERE [Ma_HD] = @Ma_HD">
                <DeleteParameters>
                    <asp:Parameter Name="Ma_HD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ma_HD" Type="String" />
                    <asp:Parameter Name="Ma_KH" Type="String" />
                    <asp:Parameter DbType="Date" Name="Ngay_lap_HD" />
                    <asp:Parameter Name="Dia_chi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ma_KH" Type="String" />
                    <asp:Parameter DbType="Date" Name="Ngay_lap_HD" />
                    <asp:Parameter Name="Dia_chi" Type="String" />
                    <asp:Parameter Name="Ma_HD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource2" GridLines="Both">
                <EditItemTemplate>
                    Ma_HD:
                    <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
                    <br />
                    Ma_KH:
                    <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                    <br />
                    Ngay_lap_HD:
                    <asp:TextBox ID="Ngay_lap_HDTextBox" runat="server" Text='<%# Bind("Ngay_lap_HD") %>' />
                    <br />
                    Dia_chi:
                    <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    Ma_HD:
                    <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
                    <br />
                    Ma_KH:
                    <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                    <br />
                    Ngay_lap_HD:
                    <asp:TextBox ID="Ngay_lap_HDTextBox" runat="server" Text='<%# Bind("Ngay_lap_HD") %>' />
                    <br />
                    Dia_chi:
                    <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Ma_HD:
                    <asp:Label ID="Ma_HDLabel" runat="server" Text='<%# Eval("Ma_HD") %>' />
                    <br />
                    Ma_KH:
                    <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Bind("Ma_KH") %>' />
                    <br />
                    Ngay_lap_HD:
                    <asp:Label ID="Ngay_lap_HDLabel" runat="server" Text='<%# Bind("Ngay_lap_HD") %>' />
                    <br />
                    Dia_chi:
                    <asp:Label ID="Dia_chiLabel" runat="server" Text='<%# Bind("Dia_chi") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:FormView>
        </p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
