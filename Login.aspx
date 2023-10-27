<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROG_POE_final_task_draft.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {}
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {
            width: 271px;
            height: 111px;
            margin-left: 152px;
            margin-top: 49px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel2" runat="server" BackColor="#666666" Height="58px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="LOGIN PAGE" Font-Size="Large" ForeColor="#CCFFCC"></asp:Label>&nbsp;
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#009933" Height="646px" Width="616px">
            <img alt="" class="auto-style5" src="logo.jpg" />
            <br />
            <br />
            &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#CCFFCC" Text="Username"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="usernametb" runat="server" CssClass="auto-style4" Width="248px"></asp:TextBox>
            <br />
            <asp:Panel ID="Panel3" runat="server">
            </asp:Panel>
            <br />
            &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#CCFFCC" Text="Password"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="passwordtb" runat="server" CssClass="auto-style3" type="password" Width="248px"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label ID="message" runat="server" Text="---"></asp:Label>
            <br />
            &nbsp;<asp:Label ID="messgtwo" runat="server" Text="---"></asp:Label>
            <br />
            <br />
            &nbsp;<asp:Button ID="loginbtn" runat="server" BackColor="#666666" CssClass="auto-style2" ForeColor="#CCFFCC" OnClick="loginbtn_Click" Text="Login as farmer" Width="137px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="loginbtn2" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="loginbtn2_Click" Text="Login as employee" Width="137px" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="regbtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="regbtn_Click" Text="Register" />
        </asp:Panel>
    </form>
</body>
</html>
