<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gridview.aspx.cs" Inherits="Gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="dtGrd_StudInfo" runat="server" CellPadding="4" Font-Names="Calibri" Font-Size="1em" HorizontalAlign="Center" Width="100%" AutoGenerateColumns="False" >
       
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="customer_id" HeaderText="customer id" ReadOnly="True" />
               
                
                <asp:BoundField DataField="First_name" HeaderText="First name" ReadOnly="True" />
                
                <asp:BoundField DataField="Last_name" HeaderText="Last name" ReadOnly="True" />
                <asp:BoundField DataField="email_id" HeaderText="email id" ReadOnly="True" />
                <asp:BoundField DataField="password" HeaderText="password" ReadOnly="True" />
                <asp:TemplateField HeaderText="Gender"></asp:TemplateField>
                
                <asp:BoundField DataField="phone_no" HeaderText="phone no" ReadOnly="True" />
                <asp:BoundField DataField="city" HeaderText="city" ReadOnly="True" />
                <asp:BoundField DataField="state" HeaderText="state" ReadOnly="True" />
                <asp:BoundField DataField="address" HeaderText="Address" ReadOnly="True" />
                
                <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True">
                    <ControlStyle BackColor="Green" Font-Bold="True" Font-Names="Cambria" Font-Size="0.8em" ForeColor="White" Height="40px" Width="95%" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="10%" />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True">
                    <ControlStyle BackColor="Red" Font-Bold="True" Font-Names="Cambria" Font-Size="1em" ForeColor="White" Height="40px" Width="90%" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="10%" />
                    </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
