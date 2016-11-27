<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="User_Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/f299e4c7c4.js"></script>
    <link href="../css/stylehome.css" rel="stylesheet" type="text/css" />
    <link href="../css/nav_footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-sm-4">
            <asp:TextBox ID="tbxMessage" class="form-control" TextMode="MultiLine" runat="server" placeholder="Message"></asp:TextBox>
            <asp:Button ID="btnSend" class="btn btn-primary" runat="server" Text="Send" OnClick="SendMessage"></asp:Button>
        </div>
        <div class="col-sm-12">
            <asp:Image ID="imgYou" class="img-circle" runat="server" Style="width: 30%; height: 236px;" />
                        
            <asp:Image ID="Image1" ImageUrl="../image/Arrow.jpg" runat="server" Style="width: 30%; height: 236px; " />
                       
            <asp:Image ID="imgReciever" class="img-circle" runat="server" Style="width: 30%; height: 236px; " />
                   
                <table>
                <asp:Repeater ID="RepeaterMessages" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="lblPerson" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label runat="server" Text=" : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblMessage" runat="server" Text='<%#Eval("Message") %>'></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
