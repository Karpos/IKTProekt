<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="ListUser.aspx.cs" Inherits="MojaZgrada.Pages.Manager.ListUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="margin-bottom:10%">
    <asp:GridView ID="GridView1" cssClass="table table-hover table-bordered col-md-12"   GridLines="None" AutoGenerateColumns="False" runat="server" AllowPaging="True" AllowSorting="True" DataKeyNames="idUser" DataSourceID="ListUsers">
        <Columns>
            <asp:BoundField DataField="idUser" HeaderText="Бр." SortExpression="idUser"   ControlStyle-Width="100px" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="username" HeaderText="Корисничко име" SortExpression="username"   ControlStyle-Width="100px" />
            <asp:BoundField DataField="email" HeaderText="Е-маил" SortExpression="email"  ControlStyle-Width="100px" />
            <asp:BoundField DataField="name" HeaderText="Име" SortExpression="name"   ControlStyle-Width="100px" />
            <asp:BoundField DataField="surname" HeaderText="Презиме" SortExpression="surname"   ControlStyle-Width="100px" />
            <asp:BoundField DataField="numberApt" HeaderText="Број на стан" SortExpression="numberApt"   ControlStyle-Width="40px" />
            <asp:BoundField DataField="address" HeaderText="Адреса" SortExpression="address"  ControlStyle-Width="100px" />
            <asp:CommandField CancelText="Откажи" DeleteText="Избриши" EditText="Промени" InsertText="Вметни" ShowEditButton="True" UpdateText="Зачувај" />
        </Columns>
    </asp:GridView>


      
        


    <asp:SqlDataSource ID="ListUsers2" runat="server"></asp:SqlDataSource>


      
        


    <asp:SqlDataSource ID="ListUsers" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [idUser], [username], [email], [name], [surname], [numberApt], [address] FROM [users] WHERE (([buildingNumber] = @buildingNumber) AND ([type] = @type))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [users] WHERE [idUser] = @original_idUser AND [username] = @original_username AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([surname] = @original_surname) OR ([surname] IS NULL AND @original_surname IS NULL)) AND (([numberApt] = @original_numberApt) OR ([numberApt] IS NULL AND @original_numberApt IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))" InsertCommand="INSERT INTO [users] ([username], [email], [name], [surname], [numberApt], [address]) VALUES (@username, @email, @name, @surname, @numberApt, @address)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [users] SET [username] = @username, [email] = @email, [name] = @name, [surname] = @surname, [numberApt] = @numberApt, [address] = @address WHERE [idUser] = @original_idUser AND [username] = @original_username AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([surname] = @original_surname) OR ([surname] IS NULL AND @original_surname IS NULL)) AND (([numberApt] = @original_numberApt) OR ([numberApt] IS NULL AND @original_numberApt IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_idUser" Type="Int32" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_surname" Type="String" />
            <asp:Parameter Name="original_numberApt" Type="Int32" />
            <asp:Parameter Name="original_address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="numberApt" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="buildingNumber" SessionField="buildingNo" Type="Int32" />
            <asp:QueryStringParameter DefaultValue="user" Name="type" QueryStringField="user" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="numberApt" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="original_idUser" Type="Int32" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_surname" Type="String" />
            <asp:Parameter Name="original_numberApt" Type="Int32" />
            <asp:Parameter Name="original_address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


      
        

        </div>
</asp:Content>
