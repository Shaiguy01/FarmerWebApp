<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employeepage.aspx.cs" Inherits="PROG_POE_final_task_draft.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 271px;
            height: 111px;
            margin-left: 173px;
            margin-top: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Panel ID="Panel1" runat="server" BackColor="#666666" Height="58px">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" Text="EMPLOYEE PAGE" Font-Size="Large" ForeColor="#CCFFCC"></asp:Label>
         </asp:Panel>
         <asp:Panel ID="Panel2" runat="server" BackColor="#009933" Height="1115px" Width="644px">
             <img alt="" class="auto-style1" src="logo.jpg" />
             <br />
             <br />
             <br />
             &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#CCFFCC" Text="Add/Create a farmer account"></asp:Label>
             <br />
             <br />
             &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#CCFFCC" Text="Farmer username"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label4" runat="server" ForeColor="#CCFFCC" Text="Farmer password"></asp:Label>
             <br />
             &nbsp;<asp:TextBox ID="Farmerusernametb" runat="server"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="Farmerpasswordtb" runat="server" style="margin-top: 0px" type="password"></asp:TextBox>
             <br />
             <br />
             &nbsp;<asp:Button ID="registerfarmertbn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="registerfarmertbn_Click" Text="Register farmer" />
             &nbsp;<asp:Label ID="Label5" runat="server" Text="--"></asp:Label>
             <br />
             <br />
             <br />
             <br />
             &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#CCFFCC" Text="Use farmer credentials to view that farmer's profile products"></asp:Label>
             <br />
             <br />
             &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="#CCFFCC" Text="Farmer username"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label8" runat="server" ForeColor="#CCFFCC" Text="Farmer password"></asp:Label>
             <br />
             &nbsp;<asp:TextBox ID="viewfarmerusernametb" runat="server"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="viewfarmerpasswordtb" runat="server" type="password"></asp:TextBox>
             <br />
             <br />
             &nbsp;<asp:Button ID="viewfarmerprofilebtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="viewfarmerprofilebtn_Click" Text="confrim" />
             &nbsp;<asp:Label ID="Label9" runat="server" Text="--"></asp:Label>
             <br />
             <br />
             <br />
             &nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             </asp:GridView>
             <br />
             <br />
             &nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#CCFFCC" Text="Filter a visiable farmer profile by:"></asp:Label>
             <br />
             <br />
             &nbsp;<asp:Label ID="Label11" runat="server" ForeColor="#CCFFCC" Text="type (enter item type):"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label12" runat="server" ForeColor="#CCFFCC" Text="Date (enter item date)"></asp:Label>
             <br />
             &nbsp;<asp:TextBox ID="typetb" runat="server"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="datetb" runat="server"></asp:TextBox>
             <br />
             <br />
             &nbsp;<asp:Button ID="typefiltertbn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="typefiltertbn_Click" Text="confirm filter by type" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="datefilterbtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="datefilterbtn_Click" Text="confirm filter by date" />
             <br />
             &nbsp;<asp:Label ID="Label13" runat="server" Text="--"></asp:Label>
             <br />
             <br />
             <br />
             &nbsp;<asp:Button ID="backtologinbtn" runat="server" BackColor="#666666" ForeColor="#CCFFCC" OnClick="backtologinbtn_Click" Text="log out" />
         </asp:Panel>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         &nbsp;<p>
             &nbsp;&nbsp; </p>
         <p>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
    </form>
</body>
</html>
