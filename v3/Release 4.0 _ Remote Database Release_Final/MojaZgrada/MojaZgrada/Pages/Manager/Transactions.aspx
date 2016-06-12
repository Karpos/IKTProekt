<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="MojaZgrada.Pages.Manager.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">  


        <br />
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="idUplati" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" PageSize="25">
            <Columns>
                   <asp:BoundField DataField="idUplati" HeaderText="Бр." InsertVisible="False" ReadOnly="True" SortExpression="idUplati" ControlStyle-Width="65px" >
<ControlStyle Width="65px"></ControlStyle>
            </asp:BoundField>
              <asp:BoundField DataField="apartment" HeaderText="Стан" SortExpression="apartment" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="income" HeaderText="Уплата" SortExpression="income" ControlStyle-Width="100%" >
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="payments" HeaderText="Исплата" SortExpression="payments" ControlStyle-Width="10">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="ticketNumber" HeaderText="Бр. уплата" SortExpression="ticketNumber" ControlStyle-Width="100%" >
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="dateIncome" DataFormatString="{0:d}" HeaderText="За месец" SortExpression="dateIncome" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="Датум уплата" SortExpression="date" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="coment" HeaderText="Коментар" SortExpression="coment" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="bankIncome" HeaderText="Уплата во банка" SortExpression="bankIncome" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
              
                </asp:BoundField>
            <asp:BoundField DataField="bankPayment" HeaderText="Исплата од банка" SortExpression="bankPayment" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="budget" HeaderText="Состојба Благајна" SortExpression="budget" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="bankBalance" HeaderText="Состојба банка" SortExpression="bankBalance" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:BoundField DataField="myBalance" HeaderText="Вкупна состојба" SortExpression="myBalance" ControlStyle-Width="100%">
<ControlStyle Width="100%"></ControlStyle>
                </asp:BoundField>
            <asp:CommandField CancelText="Откажи" DeleteText="Избриши" EditText="Промени" InsertText="Вметни" ShowEditButton="True" UpdateText="Обнови" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" DeleteCommand="DELETE FROM [transactions] WHERE [idUplati] = @original_idUplati AND (([apartment] = @original_apartment) OR ([apartment] IS NULL AND @original_apartment IS NULL)) AND (([building] = @original_building) OR ([building] IS NULL AND @original_building IS NULL)) AND (([income] = @original_income) OR ([income] IS NULL AND @original_income IS NULL)) AND (([payments] = @original_payments) OR ([payments] IS NULL AND @original_payments IS NULL)) AND (([ticketNumber] = @original_ticketNumber) OR ([ticketNumber] IS NULL AND @original_ticketNumber IS NULL)) AND (([dateIncome] = @original_dateIncome) OR ([dateIncome] IS NULL AND @original_dateIncome IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([coment] = @original_coment) OR ([coment] IS NULL AND @original_coment IS NULL)) AND (([vlezZgrada] = @original_vlezZgrada) OR ([vlezZgrada] IS NULL AND @original_vlezZgrada IS NULL)) AND (([bankIncome] = @original_bankIncome) OR ([bankIncome] IS NULL AND @original_bankIncome IS NULL)) AND (([bankPayment] = @original_bankPayment) OR ([bankPayment] IS NULL AND @original_bankPayment IS NULL)) AND (([numberPayment] = @original_numberPayment) OR ([numberPayment] IS NULL AND @original_numberPayment IS NULL)) AND (([myBalance] = @original_myBalance) OR ([myBalance] IS NULL AND @original_myBalance IS NULL)) AND (([bankBalance] = @original_bankBalance) OR ([bankBalance] IS NULL AND @original_bankBalance IS NULL))" InsertCommand="INSERT INTO [transactions] ([apartment], [building], [income], [payments], [ticketNumber], [dateIncome], [date], [budget], [coment], [vlezZgrada], [bankIncome], [bankPayment], [numberPayment], [myBalance], [bankBalance]) VALUES (@apartment, @building, @income, @payments, @ticketNumber, @dateIncome, @date, @budget, @coment, @vlezZgrada, @bankIncome, @bankPayment, @numberPayment, @myBalance, @bankBalance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [transactions] WHERE ([building] = @building) ORDER BY [idUplati] DESC" UpdateCommand="UPDATE [transactions] SET [apartment] = @apartment, [building] = @building, [income] = @income, [payments] = @payments, [ticketNumber] = @ticketNumber, [dateIncome] = @dateIncome, [date] = @date, [budget] = @budget, [coment] = @coment, [vlezZgrada] = @vlezZgrada, [bankIncome] = @bankIncome, [bankPayment] = @bankPayment, [numberPayment] = @numberPayment, [myBalance] = @myBalance, [bankBalance] = @bankBalance WHERE [idUplati] = @original_idUplati AND (([apartment] = @original_apartment) OR ([apartment] IS NULL AND @original_apartment IS NULL)) AND (([building] = @original_building) OR ([building] IS NULL AND @original_building IS NULL)) AND (([income] = @original_income) OR ([income] IS NULL AND @original_income IS NULL)) AND (([payments] = @original_payments) OR ([payments] IS NULL AND @original_payments IS NULL)) AND (([ticketNumber] = @original_ticketNumber) OR ([ticketNumber] IS NULL AND @original_ticketNumber IS NULL)) AND (([dateIncome] = @original_dateIncome) OR ([dateIncome] IS NULL AND @original_dateIncome IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([coment] = @original_coment) OR ([coment] IS NULL AND @original_coment IS NULL)) AND (([vlezZgrada] = @original_vlezZgrada) OR ([vlezZgrada] IS NULL AND @original_vlezZgrada IS NULL)) AND (([bankIncome] = @original_bankIncome) OR ([bankIncome] IS NULL AND @original_bankIncome IS NULL)) AND (([bankPayment] = @original_bankPayment) OR ([bankPayment] IS NULL AND @original_bankPayment IS NULL)) AND (([numberPayment] = @original_numberPayment) OR ([numberPayment] IS NULL AND @original_numberPayment IS NULL)) AND (([myBalance] = @original_myBalance) OR ([myBalance] IS NULL AND @original_myBalance IS NULL)) AND (([bankBalance] = @original_bankBalance) OR ([bankBalance] IS NULL AND @original_bankBalance IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_idUplati" Type="Int32" />
                <asp:Parameter Name="original_apartment" Type="Int32" />
                <asp:Parameter Name="original_building" Type="Int32" />
                <asp:Parameter Name="original_income" Type="Double" />
                <asp:Parameter Name="original_payments" Type="Double" />
                <asp:Parameter Name="original_ticketNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="original_dateIncome" />
                <asp:Parameter DbType="Date" Name="original_date" />
                <asp:Parameter Name="original_budget" Type="Double" />
                <asp:Parameter Name="original_coment" Type="String" />
                <asp:Parameter Name="original_vlezZgrada" Type="Int32" />
                <asp:Parameter Name="original_bankIncome" Type="Double" />
                <asp:Parameter Name="original_bankPayment" Type="Double" />
                <asp:Parameter Name="original_numberPayment" Type="Int32" />
                <asp:Parameter Name="original_myBalance" Type="Double" />
                <asp:Parameter Name="original_bankBalance" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="apartment" Type="Int32" />
                <asp:Parameter Name="building" Type="Int32" />
                <asp:Parameter Name="income" Type="Double" />
                <asp:Parameter Name="payments" Type="Double" />
                <asp:Parameter Name="ticketNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="dateIncome" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="budget" Type="Double" />
                <asp:Parameter Name="coment" Type="String" />
                <asp:Parameter Name="vlezZgrada" Type="Int32" />
                <asp:Parameter Name="bankIncome" Type="Double" />
                <asp:Parameter Name="bankPayment" Type="Double" />
                <asp:Parameter Name="numberPayment" Type="Int32" />
                <asp:Parameter Name="myBalance" Type="Double" />
                <asp:Parameter Name="bankBalance" Type="Double" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="building" SessionField="buildingNo" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="apartment" Type="Int32" />
                <asp:Parameter Name="building" Type="Int32" />
                <asp:Parameter Name="income" Type="Double" />
                <asp:Parameter Name="payments" Type="Double" />
                <asp:Parameter Name="ticketNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="dateIncome" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="budget" Type="Double" />
                <asp:Parameter Name="coment" Type="String" />
                <asp:Parameter Name="vlezZgrada" Type="Int32" />
                <asp:Parameter Name="bankIncome" Type="Double" />
                <asp:Parameter Name="bankPayment" Type="Double" />
                <asp:Parameter Name="numberPayment" Type="Int32" />
                <asp:Parameter Name="myBalance" Type="Double" />
                <asp:Parameter Name="bankBalance" Type="Double" />
                <asp:Parameter Name="original_idUplati" Type="Int32" />
                <asp:Parameter Name="original_apartment" Type="Int32" />
                <asp:Parameter Name="original_building" Type="Int32" />
                <asp:Parameter Name="original_income" Type="Double" />
                <asp:Parameter Name="original_payments" Type="Double" />
                <asp:Parameter Name="original_ticketNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="original_dateIncome" />
                <asp:Parameter DbType="Date" Name="original_date" />
                <asp:Parameter Name="original_budget" Type="Double" />
                <asp:Parameter Name="original_coment" Type="String" />
                <asp:Parameter Name="original_vlezZgrada" Type="Int32" />
                <asp:Parameter Name="original_bankIncome" Type="Double" />
                <asp:Parameter Name="original_bankPayment" Type="Double" />
                <asp:Parameter Name="original_numberPayment" Type="Int32" />
                <asp:Parameter Name="original_myBalance" Type="Double" />
                <asp:Parameter Name="original_bankBalance" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


        </div></div>
</asp:Content>
