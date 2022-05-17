<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTeacher.aspx.cs" Inherits="_20220515_Web3L.DisplayTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style4 {
            text-align: center;
            height: 164px;
        }
        .auto-style5 {
            width: 140px;
            text-align: right;
            height: 24px;
        }
        .auto-style7 {
            width: 171px;
        }
        .auto-style8 {
            width: 171px;
            text-align: right;
        }
        .auto-style9 {
            text-align: right;
            width: 109px;
        }
        .auto-style10 {
            text-align: right;
            width: 140px;
        }
        .auto-style11 {
            width: 102%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8" colspan="2">请输入教师姓名：</td>
                    <td class="auto-style7" colspan="2">
                        <asp:TextBox ID="tbx_teachername" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="btn_search" runat="server" Text="搜索" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="9">
                        <asp:DataList ID="dl_teacher" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table class="auto-style11">
                                    <tr>
                                        <td class="auto-style4" colspan="2">
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="160px" Width="130px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">教师姓名：</td>
                                        <td>
                                            <asp:Label ID="lbl_tname" runat="server" Text='<%# Eval("teachername") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">年龄：</td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbl_age" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">职称：</td>
                                        <td>
                                            <asp:Label ID="lbl_titlename" runat="server" Text='<%# Eval("titlename") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">所属教研室：</td>
                                        <td>
                                            <asp:Label ID="lbl_officename" runat="server" Text='<%# Eval("officename") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:LinkButton ID="lbtn_pre" runat="server">上一页</asp:LinkButton>
                    </td>
                    <td class="auto-style7">
                        <asp:LinkButton ID="lbtn_next" runat="server">下一页</asp:LinkButton>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_pageindex" runat="server" Width="34px"></asp:TextBox>
&nbsp;
                        <asp:Button ID="btn_go" runat="server" Text="跳转" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
