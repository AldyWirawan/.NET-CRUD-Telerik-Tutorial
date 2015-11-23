<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeaterDemo.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainingConnectionString %>" SelectCommand="SELECT [ChildID], [Name], [Age], [Gender] FROM [Child]"></asp:SqlDataSource>
    
    </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            Child ID :
            <%# Eval("ChildID") %><br />
            Child Name :
            <%# Eval("Name") %><br />
            Child Age :
            <%# Eval("Age") %><br />
            Child Gender :
            <%# Eval("Gender") %><br />
        </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
            <FooterTemplate>
                this is footer template
            </FooterTemplate>
            <HeaderTemplate>
                <h1> Children </h1>
            </HeaderTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
