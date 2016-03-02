<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="SanPham" %>

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
          text-align: center;
      }
      .auto-style2 {
          text-decoration: underline;
          font-size: large;
      }
      .auto-style3 {
          color: #CC0000;
          font-size: x-large;
      }
      .auto-style4 {
          text-decoration: underline;
      }
    </style>
</head>
<body style="color: #3333CC">
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <strong>
            <span class="auto-style4"><span class="auto-style3">THAMNTHPD01242_ASSIGMENT<br />
            ĐIỆN TOÁN ĐÁM MÂY<br />
            </span></span>
            <span class="auto-style2"><span class="auto-style1">
            <br />
            </span>SẢN PHẨM</span></strong><br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Ma_SP" DataSourceID="SqlDataSource3" GridLines="None" style="text-align: center; color: #333333; margin-top: 2px" Width="804px">
            <Columns>
                <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" ReadOnly="True" SortExpression="Ma_SP" />
                <asp:BoundField DataField="Ten_SP" HeaderText="Ten_SP" SortExpression="Ten_SP" />
                <asp:BoundField DataField="Don_vi_tinh" HeaderText="Don_vi_tinh" SortExpression="Don_vi_tinh" />
                <asp:BoundField DataField="Ma_Loai" HeaderText="Ma_Loai" SortExpression="Ma_Loai" />
                <asp:BoundField DataField="LOAI_SAN_PHAM_Ma_Loai" HeaderText="LOAI_SAN_PHAM_Ma_Loai" SortExpression="LOAI_SAN_PHAM_Ma_Loai" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [Ma_SP] = @Ma_SP" InsertCommand="INSERT INTO [SAN_PHAM] ([Ma_SP], [Ten_SP], [Don_vi_tinh], [Ma_Loai], [LOAI_SAN_PHAM_Ma_Loai]) VALUES (@Ma_SP, @Ten_SP, @Don_vi_tinh, @Ma_Loai, @LOAI_SAN_PHAM_Ma_Loai)" SelectCommand="SELECT * FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [Ten_SP] = @Ten_SP, [Don_vi_tinh] = @Don_vi_tinh, [Ma_Loai] = @Ma_Loai, [LOAI_SAN_PHAM_Ma_Loai] = @LOAI_SAN_PHAM_Ma_Loai WHERE [Ma_SP] = @Ma_SP">
            <DeleteParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="Ten_SP" Type="String" />
                <asp:Parameter Name="Don_vi_tinh" Type="String" />
                <asp:Parameter Name="Ma_Loai" Type="String" />
                <asp:Parameter Name="LOAI_SAN_PHAM_Ma_Loai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_SP" Type="String" />
                <asp:Parameter Name="Don_vi_tinh" Type="String" />
                <asp:Parameter Name="Ma_Loai" Type="String" />
                <asp:Parameter Name="LOAI_SAN_PHAM_Ma_Loai" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_SP" DataSourceID="SqlDataSource3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" Width="283px">
            <EditItemTemplate>
                Ma_SP:
                <asp:Label ID="Ma_SPLabel1" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                Ten_SP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ten_SPTextBox" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                Don_vi_tinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Don_vi_tinhTextBox" runat="server" Text='<%# Bind("Don_vi_tinh") %>' />
                <br />
                Ma_Loai:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                LOAI_SAN_PHAM_Ma_Loai:
                <asp:TextBox ID="LOAI_SAN_PHAM_Ma_LoaiTextBox" runat="server" Text='<%# Bind("LOAI_SAN_PHAM_Ma_Loai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_SP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                Ten_SP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ten_SPTextBox" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                Don_vi_tinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Don_vi_tinhTextBox" runat="server" Text='<%# Bind("Don_vi_tinh") %>' />
                <br />
                Ma_Loai :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                LOAI_SAN_PHAM_Ma_Loai:
                <asp:TextBox ID="LOAI_SAN_PHAM_Ma_LoaiTextBox" runat="server" Text='<%# Bind("LOAI_SAN_PHAM_Ma_Loai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_SP:
                <asp:Label ID="Ma_SPLabel" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                Ten_SP:
                <asp:Label ID="Ten_SPLabel" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                Don_vi_tinh:
                <asp:Label ID="Don_vi_tinhLabel" runat="server" Text='<%# Bind("Don_vi_tinh") %>' />
                <br />
                Ma_Loai:
                <asp:Label ID="Ma_LoaiLabel" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                LOAI_SAN_PHAM_Ma_Loai:
                <asp:Label ID="LOAI_SAN_PHAM_Ma_LoaiLabel" runat="server" Text='<%# Bind("LOAI_SAN_PHAM_Ma_Loai") %>' />
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
