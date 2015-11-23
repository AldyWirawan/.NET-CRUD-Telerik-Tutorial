<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2
    " %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SQLParent" runat="server" ConnectionString="<%$ ConnectionStrings:trainingConnectionString %>" SelectCommand="SELECT [ParentID], [Name], [Age], [Gender] FROM [Parent]"></asp:SqlDataSource>
    <asp:GridView ID="GridParent" runat="server" AutoGenerateColumns="False"
        DataKeyNames="ParentID" DataSourceID="SQLParent">
        <Columns>
            <asp:BoundField DataField="ParentID" HeaderText="ParentID" ReadOnly="True" SortExpression="ParentID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" Sortexpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        </Columns>
    </asp:GridView>
    </div>
    </form>
</body>
</html>
