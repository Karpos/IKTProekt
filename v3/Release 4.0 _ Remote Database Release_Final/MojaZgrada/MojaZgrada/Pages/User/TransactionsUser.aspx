<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="TransactionsUser.aspx.cs" Inherits="MojaZgrada.Pages.User.TransactionsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
    <asp:GridView ID="GridView1" cssClass="table table-hover table-bordered col-md-12" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idUplati" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="idUplati" HeaderText="Бр." InsertVisible="False" ReadOnly="True" SortExpression="idUplati" />
            <asp:BoundField DataField="apartment" HeaderText="Бр. Стан" SortExpression="apartment" />
            <asp:BoundField DataField="income" HeaderText="Уплата " SortExpression="income" />
            <asp:BoundField DataField="payments" HeaderText="Исплата" SortExpression="payments" />
            <asp:BoundField DataField="ticketNumber" HeaderText="Број " SortExpression="ticketNumber" />
            <asp:BoundField DataField="date" HeaderText="Датум" SortExpression="date" />
            <asp:BoundField DataField="dateIncome" DataFormatString="{0:MMMM / yy}" HeaderText="За месец" SortExpression="dateIncome" />
            <asp:BoundField DataField="coment" HeaderText="Коментар" SortExpression="coment" />
            <asp:BoundField DataField="bankIncome" HeaderText="Уплата во Банка" SortExpression="bankIncome" />
            <asp:BoundField DataField="bankPayment" HeaderText="Исплата од Банка" SortExpression="bankPayment" />
            <asp:BoundField DataField="budget" HeaderText="Салдо Благајна" SortExpression="budget" />
            <asp:BoundField DataField="bankBalance" HeaderText="Салдо Банка" SortExpression="bankBalance" />
            <asp:BoundField DataField="myBalance" HeaderText="Вкупно Салдо" SortExpression="myBalance" />
        </Columns>
        
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" DeleteCommand="DELETE FROM [transactions] WHERE [idUplati] = @original_idUplati AND (([apartment] = @original_apartment) OR ([apartment] IS NULL AND @original_apartment IS NULL)) AND (([income] = @original_income) OR ([income] IS NULL AND @original_income IS NULL)) AND (([payments] = @original_payments) OR ([payments] IS NULL AND @original_payments IS NULL)) AND (([ticketNumber] = @original_ticketNumber) OR ([ticketNumber] IS NULL AND @original_ticketNumber IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([dateIncome] = @original_dateIncome) OR ([dateIncome] IS NULL AND @original_dateIncome IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([coment] = @original_coment) OR ([coment] IS NULL AND @original_coment IS NULL)) AND (([bankIncome] = @original_bankIncome) OR ([bankIncome] IS NULL AND @original_bankIncome IS NULL)) AND (([bankPayment] = @original_bankPayment) OR ([bankPayment] IS NULL AND @original_bankPayment IS NULL)) AND (([myBalance] = @original_myBalance) OR ([myBalance] IS NULL AND @original_myBalance IS NULL)) AND (([bankBalance] = @original_bankBalance) OR ([bankBalance] IS NULL AND @original_bankBalance IS NULL))" InsertCommand="INSERT INTO [transactions] ([apartment], [income], [payments], [ticketNumber], [date], [dateIncome], [budget], [coment], [bankIncome], [bankPayment], [myBalance], [bankBalance]) VALUES (@apartment, @income, @payments, @ticketNumber, @date, @dateIncome, @budget, @coment, @bankIncome, @bankPayment, @myBalance, @bankBalance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [idUplati], [apartment], [income], [payments], [ticketNumber], [date], [dateIncome], [budget], [coment], [bankIncome], [bankPayment], [myBalance], [bankBalance] FROM [transactions] WHERE ([building] = @building) ORDER BY [idUplati] DESC" UpdateCommand="UPDATE [transactions] SET [apartment] = @apartment, [income] = @income, [payments] = @payments, [ticketNumber] = @ticketNumber, [date] = @date, [dateIncome] = @dateIncome, [budget] = @budget, [coment] = @coment, [bankIncome] = @bankIncome, [bankPayment] = @bankPayment, [myBalance] = @myBalance, [bankBalance] = @bankBalance WHERE [idUplati] = @original_idUplati AND (([apartment] = @original_apartment) OR ([apartment] IS NULL AND @original_apartment IS NULL)) AND (([income] = @original_income) OR ([income] IS NULL AND @original_income IS NULL)) AND (([payments] = @original_payments) OR ([payments] IS NULL AND @original_payments IS NULL)) AND (([ticketNumber] = @original_ticketNumber) OR ([ticketNumber] IS NULL AND @original_ticketNumber IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([dateIncome] = @original_dateIncome) OR ([dateIncome] IS NULL AND @original_dateIncome IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([coment] = @original_coment) OR ([coment] IS NULL AND @original_coment IS NULL)) AND (([bankIncome] = @original_bankIncome) OR ([bankIncome] IS NULL AND @original_bankIncome IS NULL)) AND (([bankPayment] = @original_bankPayment) OR ([bankPayment] IS NULL AND @original_bankPayment IS NULL)) AND (([myBalance] = @original_myBalance) OR ([myBalance] IS NULL AND @original_myBalance IS NULL)) AND (([bankBalance] = @original_bankBalance) OR ([bankBalance] IS NULL AND @original_bankBalance IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_idUplati" Type="Int32" />
        <asp:Parameter Name="original_apartment" Type="Int32" />
        <asp:Parameter Name="original_income" Type="Double" />
        <asp:Parameter Name="original_payments" Type="Double" />
        <asp:Parameter Name="original_ticketNumber" Type="String" />
        <asp:Parameter DbType="Date" Name="original_date" />
        <asp:Parameter DbType="Date" Name="original_dateIncome" />
        <asp:Parameter Name="original_budget" Type="Double" />
        <asp:Parameter Name="original_coment" Type="String" />
        <asp:Parameter Name="original_bankIncome" Type="Double" />
        <asp:Parameter Name="original_bankPayment" Type="Double" />
        <asp:Parameter Name="original_myBalance" Type="Double" />
        <asp:Parameter Name="original_bankBalance" Type="Double" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="apartment" Type="Int32" />
        <asp:Parameter Name="income" Type="Double" />
        <asp:Parameter Name="payments" Type="Double" />
        <asp:Parameter Name="ticketNumber" Type="String" />
        <asp:Parameter DbType="Date" Name="date" />
        <asp:Parameter DbType="Date" Name="dateIncome" />
        <asp:Parameter Name="budget" Type="Double" />
        <asp:Parameter Name="coment" Type="String" />
        <asp:Parameter Name="bankIncome" Type="Double" />
        <asp:Parameter Name="bankPayment" Type="Double" />
        <asp:Parameter Name="myBalance" Type="Double" />
        <asp:Parameter Name="bankBalance" Type="Double" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="building" SessionField="buildingNo" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="apartment" Type="Int32" />
        <asp:Parameter Name="income" Type="Double" />
        <asp:Parameter Name="payments" Type="Double" />
        <asp:Parameter Name="ticketNumber" Type="String" />
        <asp:Parameter DbType="Date" Name="date" />
        <asp:Parameter DbType="Date" Name="dateIncome" />
        <asp:Parameter Name="budget" Type="Double" />
        <asp:Parameter Name="coment" Type="String" />
        <asp:Parameter Name="bankIncome" Type="Double" />
        <asp:Parameter Name="bankPayment" Type="Double" />
        <asp:Parameter Name="myBalance" Type="Double" />
        <asp:Parameter Name="bankBalance" Type="Double" />
        <asp:Parameter Name="original_idUplati" Type="Int32" />
        <asp:Parameter Name="original_apartment" Type="Int32" />
        <asp:Parameter Name="original_income" Type="Double" />
        <asp:Parameter Name="original_payments" Type="Double" />
        <asp:Parameter Name="original_ticketNumber" Type="String" />
        <asp:Parameter DbType="Date" Name="original_date" />
        <asp:Parameter DbType="Date" Name="original_dateIncome" />
        <asp:Parameter Name="original_budget" Type="Double" />
        <asp:Parameter Name="original_coment" Type="String" />
        <asp:Parameter Name="original_bankIncome" Type="Double" />
        <asp:Parameter Name="original_bankPayment" Type="Double" />
        <asp:Parameter Name="original_myBalance" Type="Double" />
        <asp:Parameter Name="original_bankBalance" Type="Double" />
    </UpdateParameters>
</asp:SqlDataSource>
        </div>
</asp:Content>
