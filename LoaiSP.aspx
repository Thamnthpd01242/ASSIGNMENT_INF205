<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoaiSP.aspx.cs" Inherits="Default3" %>

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
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <div class="auto-style4">
    
        <span class="auto-style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style2">THAMNTHPD01242_ASSIGMENT<br />
            ĐIỆN TOÁN ĐÁM MÂY<br />
            </span>
            <br />
            LOẠI SẢN PHẨM</strong></span><br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Ma_Loai" DataSourceID="SqlDataSource1" GridLines="None" Width="736px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="Ma_Loai" HeaderText="Ma_Loai" ReadOnly="True" SortExpression="Ma_Loai" />
                <asp:BoundField DataField="Ten_Loai" HeaderText="Ten_Loai" SortExpression="Ten_Loai" />
                <asp:CommandField />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [LOAI_SAN_PHAM] WHERE [Ma_Loai] = @Ma_Loai" InsertCommand="INSERT INTO [LOAI_SAN_PHAM] ([Ma_Loai], [Ten_Loai]) VALUES (@Ma_Loai, @Ten_Loai)" SelectCommand="SELECT * FROM [LOAI_SAN_PHAM]" UpdateCommand="UPDATE [LOAI_SAN_PHAM] SET [Ten_Loai] = @Ten_Loai WHERE [Ma_Loai] = @Ma_Loai">
            <DeleteParameters>
                <asp:Parameter Name="Ma_Loai" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_Loai" Type="String" />
                <asp:Parameter Name="Ten_Loai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_Loai" Type="String" />
                <asp:Parameter Name="Ma_Loai" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Ma_Loai" DataSourceID="SqlDataSource1" GridLines="Both" Width="172px">
            <EditItemTemplate>
                Ma_Loai:
                <asp:Label ID="Ma_LoaiLabel1" runat="server" Text='<%# Eval("Ma_Loai") %>' />
                <br />
                Ten_Loai:
                <asp:TextBox ID="Ten_LoaiTextBox" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_Loai:
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                Ten_Loai:
                <asp:TextBox ID="Ten_LoaiTextBox" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_Loai:
                <asp:Label ID="Ma_LoaiLabel" runat="server" Text='<%# Eval("Ma_Loai") %>' />
                <br />
                Ten_Loai:
                <asp:Label ID="Ten_LoaiLabel" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
