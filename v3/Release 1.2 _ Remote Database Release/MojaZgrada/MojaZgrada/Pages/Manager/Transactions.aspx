<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="MojaZgrada.Pages.Manager.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">  
    <asp:gridview cssClass="table-responsive table table-hover table-bordered col-md-12" ID="GridView1"   runat="server"  DataKeyNames="idUplati" DataSourceID="SqlDataSource1"  GridLines="None" AutoGenerateColumns="False"  AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="idUplati" HeaderText="Бр." InsertVisible="False" ReadOnly="True" SortExpression="idUplati" ControlStyle-Width="30px" >
<ControlStyle Width="30px"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="apartment" HeaderText="Стан" SortExpression="apartment" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="income" HeaderText="Уплата" SortExpression="income" ControlStyle-Width="100%" />
            <asp:BoundField DataField="payments" HeaderText="Исплата" SortExpression="payments" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="ticketNumber" HeaderText="Бр. уплата" SortExpression="ticketNumber" ControlStyle-Width="100%" />
            <asp:BoundField DataField="dateIncome" DataFormatString="{0:d}" HeaderText="За месец" SortExpression="dateIncome" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="Датум уплата" SortExpression="date" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="coment" HeaderText="Коментар" SortExpression="coment" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="bankIncome" HeaderText="Уплата во банка" SortExpression="bankIncome" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="bankPayment" HeaderText="Исплата од банка" SortExpression="bankPayment" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="budget" HeaderText="Состојба Благајна" SortExpression="budget" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="bankBalance" HeaderText="Состојба банка" SortExpression="bankBalance" ControlStyle-Width="100%"/>
            <asp:BoundField DataField="myBalance" HeaderText="Вкупна состојба" SortExpression="myBalance" ControlStyle-Width="100%"/>
            <asp:CommandField CancelText="Откажи" DeleteText="Избриши" EditText="Промени" InsertText="Вметни" ShowEditButton="True" UpdateText="Обнови" />
        </Columns>
    </asp:gridview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [idUplati], [apartment], [income], [payments], [ticketNumber], [dateIncome], [date], [budget], [coment], [bankIncome], [bankPayment], [numberPayment], [bankBalance], [myBalance] FROM [transactions] WHERE ([building] = @building)">
        <SelectParameters>
            <asp:SessionParameter Name="building" SessionField="buildingNo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div></div>
</asp:Content>
