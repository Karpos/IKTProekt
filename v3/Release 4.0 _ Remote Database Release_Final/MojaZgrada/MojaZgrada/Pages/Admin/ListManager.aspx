<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ListManager.aspx.cs" Inherits="MojaZgrada.Pages.Admin.ListManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
    <div class="col-lg-12 col-md-12 col-sm-12">  

    <asp:gridview cssClass="table-responsive table table-hover table-bordered col-md-12"   GridLines="None" ID="lstMng"  runat="server" AutoGenerateColumns="False" DataSourceID="ManagerView" AllowPaging="True" AllowSorting="True" DataKeyNames="idUser">
        <Columns>
            <asp:BoundField DataField="idUser" HeaderText="Бр." SortExpression="idUser"    ControlStyle-Width="100px" InsertVisible="False" ReadOnly="True" /> 
            <asp:BoundField DataField="name" HeaderText="Име" SortExpression="name"  ControlStyle-Width="120px"/>
            <asp:BoundField DataField="surname" HeaderText="Презиме" SortExpression="surname"  ControlStyle-Width="120px" />
            <asp:BoundField DataField="username" HeaderText="Корисничко име" SortExpression="username"  ControlStyle-Width="90px"/>
            <asp:BoundField DataField="buildingNumber" HeaderText="Број на зграда" SortExpression="buildingNumber"  ControlStyle-Width="100px"/>
            <asp:BoundField DataField="address" HeaderText="Адреса" SortExpression="address"  ControlStyle-Width="50px" />
            <asp:BoundField DataField="city" HeaderText="Град" SortExpression="city"  ControlStyle-Width="130px"/>
            <asp:BoundField DataField="country" HeaderText="Држава" SortExpression="country"  ControlStyle-Width="100px"/>
            <asp:BoundField DataField="password" HeaderText="Лозинка" SortExpression="password"  ControlStyle-Width="100px"/>
            <asp:CommandField CancelText="Откажи" DeleteText="Избриши" EditText="Промени" ShowEditButton="True" UpdateText="Зачувај" />
          
          
        
        </Columns>
        
</asp:gridview>
    
<asp:SqlDataSource ID="ManagerView" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [idUser], [username], [buildingNumber], [name], [surname], [password], [address], [city], [country] FROM [users] WHERE ([type] = @type)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [users] WHERE [idUser] = @original_idUser AND [username] = @original_username AND (([buildingNumber] = @original_buildingNumber) OR ([buildingNumber] IS NULL AND @original_buildingNumber IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([surname] = @original_surname) OR ([surname] IS NULL AND @original_surname IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([country] = @original_country) OR ([country] IS NULL AND @original_country IS NULL))" InsertCommand="INSERT INTO [users] ([username], [buildingNumber], [name], [surname], [password], [address], [city], [country]) VALUES (@username, @buildingNumber, @name, @surname, @password, @address, @city, @country)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [users] SET [username] = @username, [buildingNumber] = @buildingNumber, [name] = @name, [surname] = @surname, [password] = @password, [address] = @address, [city] = @city, [country] = @country WHERE [idUser] = @original_idUser AND [username] = @original_username AND (([buildingNumber] = @original_buildingNumber) OR ([buildingNumber] IS NULL AND @original_buildingNumber IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([surname] = @original_surname) OR ([surname] IS NULL AND @original_surname IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([country] = @original_country) OR ([country] IS NULL AND @original_country IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_idUser" Type="Int32" />
        <asp:Parameter Name="original_username" Type="String" />
        <asp:Parameter Name="original_buildingNumber" Type="Int32" />
        <asp:Parameter Name="original_name" Type="String" />
        <asp:Parameter Name="original_surname" Type="String" />
        <asp:Parameter Name="original_password" Type="String" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_city" Type="String" />
        <asp:Parameter Name="original_country" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="buildingNumber" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="surname" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="country" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="manager" Name="type" QueryStringField="manager" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="buildingNumber" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="surname" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="original_idUser" Type="Int32" />
        <asp:Parameter Name="original_username" Type="String" />
        <asp:Parameter Name="original_buildingNumber" Type="Int32" />
        <asp:Parameter Name="original_name" Type="String" />
        <asp:Parameter Name="original_surname" Type="String" />
        <asp:Parameter Name="original_password" Type="String" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_city" Type="String" />
        <asp:Parameter Name="original_country" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
        </div></div>
</asp:Content>
