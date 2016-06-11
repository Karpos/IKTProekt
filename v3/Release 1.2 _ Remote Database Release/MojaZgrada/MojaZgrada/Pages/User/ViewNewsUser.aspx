<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewNewsUser.aspx.cs" Inherits="MojaZgrada.Pages.User.ViewNewsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
 <asp:GridView ID="GridView1"  RowStyle-CssClass="RowStyle"   runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="222px" Width="890px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="idNews" HeaderText="Бр." SortExpression="soopstenie"/>
            <asp:BoundField DataField="title" HeaderText="Наслов" SortExpression="date" />
            <asp:BoundField DataField="dateNews" HeaderText="Датум" SortExpression="date" />
            <asp:BoundField DataField="attachments" HeaderText="Прикачувања" SortExpression="date" />
            <asp:BoundField DataField="keywords" HeaderText="Клучни зборови" SortExpression="date" />
            <asp:CommandField SelectText="Прегледај" ShowSelectButton="True" />
        </Columns>
    </asp:GridView  >
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [idNews], [title], [keywords], [dateNews], [attachments] FROM NEWS WHERE ([buildingNumber] = @buildingNumber)">
        <SelectParameters>
            <asp:SessionParameter Name="buildingNumber" SessionField="buildingNo" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
        <asp:Panel runat="server" ID="pnlPregledaj"> 
            <asp:Table runat="server">
                 <asp:TableRow>
                    <asp:TableCell>
                         <label > Наслов:</label> <asp:Label BackColor="LightGray" runat="server" ID="lblTitle"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                   <label > Порака:</label> <asp:Label runat="server" ID="lblDesc"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <label > Линк до прикачени документи:</label>    <asp:Label runat="server" ID="lblAttach"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <label > Датум:</label>    <asp:Label runat="server" ID="lblDate"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button CssClass="btn btn-primary" runat="server" ID="btnNazad" Text=" << Назад"></asp:Button>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
    </div></div>
</asp:Content>
