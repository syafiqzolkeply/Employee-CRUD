<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Employee_CRUD.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Registration</title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            margin-bottom: -1px;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
        .auto-style1 {
            width: 263px;
        }
    </style>
</head>
<body>
    <p>Employee Registration Form</p>
    <form id="form1" runat="server">
        <div>
            <table border="0" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Employee Name</td>
                    <td>:</td>
                    <td class="auto-style1"><asp:TextBox ID="txtName" runat="server" Width="140" /></td>
                </tr>
                <tr>
                    <td style="width: 150px">Email Address</td>
                    <td>:</td>
                    <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" Width="140" /></td>
                </tr>
                <tr>
                    <td style="width: 150px">Telephone</td>
                    <td>:</td>
                    <td class="auto-style1"><asp:TextBox ID="txtTelephone" runat="server" Width="140" /></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="Clear" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
