<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemEditView.aspx.cs" Inherits="trainingdemo_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
        <br />
    
        Parent Name :
    
    </div>
        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        <asp:HiddenField ID="HidParentID" runat="server" />
        <br />
        Age :<br />
        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
        <br />
        Gender :<asp:RadioButtonList ID="RblstGender" runat="server" RepeatLayout="Flow" >
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
    </form>
</body>
</html>
