<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="PregledajPoMeseciUser.aspx.cs" Inherits="MojaZgrada.Pages.User.PregledajPoMeseciUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-bottom:10%; margin-left:8%" >
        <div class="row" >  
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
       <asp:Label ID="Label1" runat="server" Text="Број на стан"></asp:Label>
        <asp:Label ID="apt" runat="server" Enabled="false"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Одбери месец"></asp:Label>
        <asp:DropDownList ID="DropDownList2"  runat="server" AutoPostBack="True" ></asp:DropDownList>
               &nbsp; Одбери година:
               <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" ></asp:DropDownList>
              </div></div>
        <div class="row">  
    
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"> 
        <h2>Уплата за месец</h2>
    <asp:GridView ID="GridView1" CssClass="table table-responsive table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="461px" PageSize="15">
        <Columns>
            <asp:BoundField DataField="payments" HeaderText="Уплата" SortExpression="payments" />
            <asp:BoundField DataField="date" HeaderText="За месец" SortExpression="date" DataFormatString="{0:MMMM - yyyy }" />
            <asp:BoundField DataField="coment" HeaderText="Коментар" SortExpression="coment" />
            <asp:BoundField DataField="apartment" HeaderText="Број на стан" SortExpression="apartment" />
        </Columns>
    </asp:GridView>
         </div>
              <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" > 
                     <h2>Уплата за година</h2>
    <asp:GridView ID="GridView2" CssClass="table table-responsive table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="463px" PageSize="15">
        <Columns>
            <asp:BoundField DataField="payments" HeaderText="Уплата" SortExpression="payments" />
            <asp:BoundField DataField="date" HeaderText="За месец" SortExpression="date" DataFormatString="{0:MMMM - yyyy }" />
            <asp:BoundField DataField="coment" HeaderText="Коментар" SortExpression="coment" />
            <asp:BoundField DataField="apartment" HeaderText="Број на стан" SortExpression="apartment" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [payments], [date], [coment], [apartment] FROM [TRANSACTIONS] WHERE ([apartment] = @userid AND (SUBSTRING(CONVERT(VARCHAR(19),date),6,2) = @month))">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="apt" Type="Int32" />      
            <asp:ControlParameter ControlID="DropDownList2" Name="month" PropertyName="SelectedValue" Type="Int32" />           
        </SelectParameters>
    </asp:SqlDataSource>
 
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [payments], [date], [coment], [apartment] FROM [TRANSACTIONS] WHERE ([apartment] = @userid AND (SUBSTRING(CONVERT(VARCHAR(19),date),1,4) = @year))">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="apt" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList3" Name="year" PropertyName="SelectedValue" Type="Int32" />           
        </SelectParameters>
    </asp:SqlDataSource>
</div>
             </div>
           </div>
</asp:Content>
