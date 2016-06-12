<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="PregledajPoStanovi.aspx.cs" Inherits="MojaZgrada.Pages.Manager.PregledajPoStanovi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
     <label > Изберет број на стан:</label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="numberApt" DataValueField="numberApt">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [idUser], [buildingNumber], [name], [surname], [numberApt], [username], [password], [email], [type], [address] FROM [users] WHERE (([type] = @type) AND ([buildingNumber] = @buildingNumber))">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="user" Name="type" QueryStringField="user" Type="String" />
            <asp:SessionParameter Name="buildingNumber" SessionField="buildingNo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /> <br /> <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-bordered table-hover" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idUplati" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="idUplati" HeaderText="Бр." InsertVisible="False" ReadOnly="True" SortExpression="idUplati" />
            <asp:BoundField DataField="apartment" HeaderText="Стан" SortExpression="apartment" />
            <asp:BoundField DataField="income" HeaderText="Уплата" SortExpression="income" />
            <asp:BoundField DataField="ticketNumber" HeaderText="Број Уплата" SortExpression="ticketNumber" />
            <asp:BoundField DataField="dateIncome" DataFormatString="{0:MMMM - yyyy }" HeaderText="За месец" SortExpression="dateIncome" />
            <asp:BoundField DataField="date" HeaderText="Датум уплата" SortExpression="date" />
            <asp:BoundField DataField="coment" HeaderText="Коментар" SortExpression="coment" />
            <asp:BoundField DataField="bankPayment" HeaderText="bankPayment" SortExpression="bankPayment" Visible="False" />
            <asp:BoundField DataField="bankIncome" HeaderText="bankIncome" SortExpression="bankIncome" Visible="False" />
            <asp:BoundField DataField="vlezZgrada" HeaderText="vlezZgrada" SortExpression="vlezZgrada" Visible="False" />
            <asp:BoundField DataField="budget" HeaderText="budget" SortExpression="budget" Visible="False" />
            <asp:BoundField DataField="numberPayment" HeaderText="numberPayment" SortExpression="numberPayment" Visible="False" />
            <asp:BoundField DataField="bankBalance" HeaderText="bankBalance" SortExpression="bankBalance" Visible="False" />
            <asp:BoundField DataField="myBalance" HeaderText="myBalance" SortExpression="myBalance" Visible="False" />
            <asp:BoundField DataField="payments" HeaderText="payments" SortExpression="payments" Visible="False" />
            <asp:BoundField DataField="building" HeaderText="Бр. Зграда" SortExpression="building" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" DeleteCommand="DELETE FROM [transactions] WHERE [idUplati] = @original_idUplati AND (([income] = @original_income) OR ([income] IS NULL AND @original_income IS NULL)) AND (([ticketNumber] = @original_ticketNumber) OR ([ticketNumber] IS NULL AND @original_ticketNumber IS NULL)) AND (([dateIncome] = @original_dateIncome) OR ([dateIncome] IS NULL AND @original_dateIncome IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([coment] = @original_coment) OR ([coment] IS NULL AND @original_coment IS NULL)) AND (([bankPayment] = @original_bankPayment) OR ([bankPayment] IS NULL AND @original_bankPayment IS NULL)) AND (([bankIncome] = @original_bankIncome) OR ([bankIncome] IS NULL AND @original_bankIncome IS NULL)) AND (([vlezZgrada] = @original_vlezZgrada) OR ([vlezZgrada] IS NULL AND @original_vlezZgrada IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([numberPayment] = @original_numberPayment) OR ([numberPayment] IS NULL AND @original_numberPayment IS NULL)) AND (([bankBalance] = @original_bankBalance) OR ([bankBalance] IS NULL AND @original_bankBalance IS NULL)) AND (([myBalance] = @original_myBalance) OR ([myBalance] IS NULL AND @original_myBalance IS NULL)) AND (([payments] = @original_payments) OR ([payments] IS NULL AND @original_payments IS NULL)) AND (([building] = @original_building) OR ([building] IS NULL AND @original_building IS NULL)) AND (([apartment] = @original_apartment) OR ([apartment] IS NULL AND @original_apartment IS NULL))" InsertCommand="INSERT INTO [transactions] ([income], [ticketNumber], [dateIncome], [date], [coment], [bankPayment], [bankIncome], [vlezZgrada], [budget], [numberPayment], [bankBalance], [myBalance], [payments], [building], [apartment]) VALUES (@income, @ticketNumber, @dateIncome, @date, @coment, @bankPayment, @bankIncome, @vlezZgrada, @budget, @numberPayment, @bankBalance, @myBalance, @payments, @building, @apartment)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [idUplati], [income], [ticketNumber], [dateIncome], [date], [coment], [bankPayment], [bankIncome], [vlezZgrada], [budget], [numberPayment], [bankBalance], [myBalance], [payments], [building], [apartment] FROM [transactions] WHERE (([apartment] = @apartment) AND ([building] = @building))" UpdateCommand="UPDATE [transactions] SET [income] = @income, [ticketNumber] = @ticketNumber, [dateIncome] = @dateIncome, [date] = @date, [coment] = @coment, [bankPayment] = @bankPayment, [bankIncome] = @bankIncome, [vlezZgrada] = @vlezZgrada, [budget] = @budget, [numberPayment] = @numberPayment, [bankBalance] = @bankBalance, [myBalance] = @myBalance, [payments] = @payments, [building] = @building, [apartment] = @apartment WHERE [idUplati] = @original_idUplati AND (([income] = @original_income) OR ([income] IS NULL AND @original_income IS NULL)) AND (([ticketNumber] = @original_ticketNumber) OR ([ticketNumber] IS NULL AND @original_ticketNumber IS NULL)) AND (([dateIncome] = @original_dateIncome) OR ([dateIncome] IS NULL AND @original_dateIncome IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([coment] = @original_coment) OR ([coment] IS NULL AND @original_coment IS NULL)) AND (([bankPayment] = @original_bankPayment) OR ([bankPayment] IS NULL AND @original_bankPayment IS NULL)) AND (([bankIncome] = @original_bankIncome) OR ([bankIncome] IS NULL AND @original_bankIncome IS NULL)) AND (([vlezZgrada] = @original_vlezZgrada) OR ([vlezZgrada] IS NULL AND @original_vlezZgrada IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([numberPayment] = @original_numberPayment) OR ([numberPayment] IS NULL AND @original_numberPayment IS NULL)) AND (([bankBalance] = @original_bankBalance) OR ([bankBalance] IS NULL AND @original_bankBalance IS NULL)) AND (([myBalance] = @original_myBalance) OR ([myBalance] IS NULL AND @original_myBalance IS NULL)) AND (([payments] = @original_payments) OR ([payments] IS NULL AND @original_payments IS NULL)) AND (([building] = @original_building) OR ([building] IS NULL AND @original_building IS NULL)) AND (([apartment] = @original_apartment) OR ([apartment] IS NULL AND @original_apartment IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_idUplati" Type="Int32" />
            <asp:Parameter Name="original_income" Type="Double" />
            <asp:Parameter Name="original_ticketNumber" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateIncome" />
            <asp:Parameter DbType="Date" Name="original_date" />
            <asp:Parameter Name="original_coment" Type="String" />
            <asp:Parameter Name="original_bankPayment" Type="Double" />
            <asp:Parameter Name="original_bankIncome" Type="Double" />
            <asp:Parameter Name="original_vlezZgrada" Type="Int32" />
            <asp:Parameter Name="original_budget" Type="Double" />
            <asp:Parameter Name="original_numberPayment" Type="Int32" />
            <asp:Parameter Name="original_bankBalance" Type="Double" />
            <asp:Parameter Name="original_myBalance" Type="Double" />
            <asp:Parameter Name="original_payments" Type="Double" />
            <asp:Parameter Name="original_building" Type="Int32" />
            <asp:Parameter Name="original_apartment" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="income" Type="Double" />
            <asp:Parameter Name="ticketNumber" Type="String" />
            <asp:Parameter DbType="Date" Name="dateIncome" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="coment" Type="String" />
            <asp:Parameter Name="bankPayment" Type="Double" />
            <asp:Parameter Name="bankIncome" Type="Double" />
            <asp:Parameter Name="vlezZgrada" Type="Int32" />
            <asp:Parameter Name="budget" Type="Double" />
            <asp:Parameter Name="numberPayment" Type="Int32" />
            <asp:Parameter Name="bankBalance" Type="Double" />
            <asp:Parameter Name="myBalance" Type="Double" />
            <asp:Parameter Name="payments" Type="Double" />
            <asp:Parameter Name="building" Type="Int32" />
            <asp:Parameter Name="apartment" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="apartment" PropertyName="SelectedValue" Type="Int32" />
            <asp:SessionParameter Name="building" SessionField="buildingNo" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="income" Type="Double" />
            <asp:Parameter Name="ticketNumber" Type="String" />
            <asp:Parameter DbType="Date" Name="dateIncome" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="coment" Type="String" />
            <asp:Parameter Name="bankPayment" Type="Double" />
            <asp:Parameter Name="bankIncome" Type="Double" />
            <asp:Parameter Name="vlezZgrada" Type="Int32" />
            <asp:Parameter Name="budget" Type="Double" />
            <asp:Parameter Name="numberPayment" Type="Int32" />
            <asp:Parameter Name="bankBalance" Type="Double" />
            <asp:Parameter Name="myBalance" Type="Double" />
            <asp:Parameter Name="payments" Type="Double" />
            <asp:Parameter Name="building" Type="Int32" />
            <asp:Parameter Name="apartment" Type="Int32" />
            <asp:Parameter Name="original_idUplati" Type="Int32" />
            <asp:Parameter Name="original_income" Type="Double" />
            <asp:Parameter Name="original_ticketNumber" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateIncome" />
            <asp:Parameter DbType="Date" Name="original_date" />
            <asp:Parameter Name="original_coment" Type="String" />
            <asp:Parameter Name="original_bankPayment" Type="Double" />
            <asp:Parameter Name="original_bankIncome" Type="Double" />
            <asp:Parameter Name="original_vlezZgrada" Type="Int32" />
            <asp:Parameter Name="original_budget" Type="Double" />
            <asp:Parameter Name="original_numberPayment" Type="Int32" />
            <asp:Parameter Name="original_bankBalance" Type="Double" />
            <asp:Parameter Name="original_myBalance" Type="Double" />
            <asp:Parameter Name="original_payments" Type="Double" />
            <asp:Parameter Name="original_building" Type="Int32" />
            <asp:Parameter Name="original_apartment" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

     </div></div>
</asp:Content>
