<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ListUsers_User.aspx.cs" Inherits="MojaZgrada.Pages.User.ListUsers_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
    <asp:GridView ID="GridView1" runat="server" cssClass="table table-hover table-bordered col-md-12"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="Корисничко име" SortExpression="username" />
            <asp:BoundField DataField="name" HeaderText="Име" SortExpression="name" />
            <asp:BoundField DataField="surname" HeaderText="Презиме" SortExpression="surname" />
            <asp:BoundField DataField="email" HeaderText="Е-маил" SortExpression="email" />
            <asp:BoundField DataField="numberApt" HeaderText="Број на стан" SortExpression="numberApt" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [username], [name], [surname], [email], [numberApt] FROM [users] WHERE (([type] = @type) AND ([buildingNumber] = @buildingNumber))">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="user" Name="type" QueryStringField="user" Type="String" />
            <asp:SessionParameter Name="buildingNumber" SessionField="buildingNo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
