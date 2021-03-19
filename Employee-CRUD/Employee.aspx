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
        <br />
        <p>Employee Records</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpID"
        OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." Width="930px">
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lblEmpName" runat="server" Text='<%# Eval("empName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmpName" runat="server" Text='<%# Eval("empName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>                
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="lblEmpEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmpEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Telephone">
                    <ItemTemplate>
                        <asp:Label ID="lblEmpTelephone" runat="server" Text='<%# Eval("Telephone") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmpTelephone" runat="server" Text='<%# Eval("Telephone") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"  />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
