<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="User_Reviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Repeater ID="RepeaterReviews" runat="server">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblReviewer" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblReview" runat="server" Text='<%#Eval("Review") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
        <asp:Label ID="lblMessage" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
