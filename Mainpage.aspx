<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="PROG_POE_final_task_draft.Mainpage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 271px;
            height: 111px;
            margin-left: 150px;
            margin-top: 57px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackColor="#666666" Height="58px">
                <br />
                <asp:Label ID="Label11" runat="server" Font-Size="Large" ForeColor="#CCFFCC" Text="FARMER PAGE"></asp:Label>
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" BackColor="#009933" Height="696px" Width="616px">
            &nbsp;<img alt="" class="auto-style2" src="logo.jpg" /><br /> 
            <br />
            <br />
            &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#CCFFCC" Text="Item title"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" ForeColor="#CCFFCC" Text="Item type"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" ForeColor="#CCFFCC" Text="Toady's date"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="itemtitletb" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="itemtypetb" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="itemdatetb" runat="server" Text="YYYY/MM/DD"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Button ID="adddetailsbtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="adddetailsbtn_Click" Text="Add Details" />
            &nbsp;<asp:Label ID="Mdetailsadded" runat="server" Text="---"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" BackColor="#666666" ForeColor="#CCFFCC">
            </asp:GridView>
            <br />
            &nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#CCFFCC" Text="Item name"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="deleteitemtb" runat="server" OnTextChanged="deleteitemtb_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Button ID="deletebtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="deletebtn_Click" Text="Delete" />
            &nbsp;<asp:Label ID="deletemessg" runat="server" Text="---"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<asp:Button ID="logoutbtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="logoutbtn_Click" Text="Log out" />
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</form>
</body>
</html>
