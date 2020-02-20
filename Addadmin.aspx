﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addadmin.aspx.cs" Inherits="Addadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD New Admin Login</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            New Username :
                        </td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="**" ForeColor="Red" SetFocusOnError="True" 
                                ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="**" ForeColor="Red" SetFocusOnError="True" 
                                ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Confirm-Pass : 
                        </td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="**" 
                                ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnaddadmin" runat="server" CssClass="btn" Text="ADD Admin" 
                                Width="100px" onclick="btnaddadmin_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" colspan="3">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                AutoGenerateDeleteButton="True" DataKeyNames="aid" 
                                onrowdeleting="GridView1_RowDeleting" Width="346px" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                <asp:BoundField HeaderText="Login Name" DataField="username" />
                                <asp:TemplateField HeaderText="Password">
                                <ItemTemplate>
                                <asp:Label ID="lblp"  runat="server" Text="*****" ></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                              
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

