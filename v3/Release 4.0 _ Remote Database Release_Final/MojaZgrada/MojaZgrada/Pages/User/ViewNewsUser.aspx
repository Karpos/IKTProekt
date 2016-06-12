<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewNewsUser.aspx.cs" Inherits="MojaZgrada.Pages.User.ViewNewsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
 <asp:GridView ID="GridView1"  RowStyle-CssClass="RowStyle"   runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="222px" Width="890px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="idNews">
        <Columns>
            <asp:BoundField DataField="idNews" HeaderText="idNews" SortExpression="idNews" ReadOnly="True"/>
            <asp:BoundField DataField="fromUser" HeaderText="Од корисник" SortExpression="fromUser" />
            <asp:BoundField DataField="title" HeaderText="Наслов" SortExpression="title" />
            <asp:BoundField DataField="description" HeaderText="Содржина" SortExpression="description" />
            <asp:BoundField DataField="keywords" HeaderText="keywords" SortExpression="keywords" Visible="False" />
            <asp:BoundField DataField="dateNews" HeaderText="Датум" SortExpression="dateNews" />
            <asp:BoundField DataField="attachments" HeaderText="attachments" SortExpression="attachments" Visible="False" />
            <asp:BoundField DataField="comentsNews" HeaderText="comentsNews" SortExpression="comentsNews" Visible="False" />
            <asp:BoundField DataField="buildingNumber" HeaderText="buildingNumber" SortExpression="buildingNumber" Visible="False" />
       <asp:CommandField SelectText="Прегледај" ShowSelectButton="True" />
               </Columns>

<RowStyle CssClass="RowStyle"></RowStyle>
    </asp:GridView  >
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT * FROM [NEWS] WHERE ([buildingNumber] = @buildingNumber) ORDER BY [dateNews] DESC" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [NEWS] WHERE [idNews] = @original_idNews AND (([fromUser] = @original_fromUser) OR ([fromUser] IS NULL AND @original_fromUser IS NULL)) AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([keywords] = @original_keywords) OR ([keywords] IS NULL AND @original_keywords IS NULL)) AND (([dateNews] = @original_dateNews) OR ([dateNews] IS NULL AND @original_dateNews IS NULL)) AND (([attachments] = @original_attachments) OR ([attachments] IS NULL AND @original_attachments IS NULL)) AND [comentsNews] = @original_comentsNews AND (([buildingNumber] = @original_buildingNumber) OR ([buildingNumber] IS NULL AND @original_buildingNumber IS NULL))" InsertCommand="INSERT INTO [NEWS] ([idNews], [fromUser], [title], [description], [keywords], [dateNews], [attachments], [comentsNews], [buildingNumber]) VALUES (@idNews, @fromUser, @title, @description, @keywords, @dateNews, @attachments, @comentsNews, @buildingNumber)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [NEWS] SET [fromUser] = @fromUser, [title] = @title, [description] = @description, [keywords] = @keywords, [dateNews] = @dateNews, [attachments] = @attachments, [comentsNews] = @comentsNews, [buildingNumber] = @buildingNumber WHERE [idNews] = @original_idNews AND (([fromUser] = @original_fromUser) OR ([fromUser] IS NULL AND @original_fromUser IS NULL)) AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([keywords] = @original_keywords) OR ([keywords] IS NULL AND @original_keywords IS NULL)) AND (([dateNews] = @original_dateNews) OR ([dateNews] IS NULL AND @original_dateNews IS NULL)) AND (([attachments] = @original_attachments) OR ([attachments] IS NULL AND @original_attachments IS NULL)) AND [comentsNews] = @original_comentsNews AND (([buildingNumber] = @original_buildingNumber) OR ([buildingNumber] IS NULL AND @original_buildingNumber IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_idNews" Type="Int32" />
            <asp:Parameter Name="original_fromUser" Type="String" />
            <asp:Parameter Name="original_title" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_keywords" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateNews" />
            <asp:Parameter Name="original_attachments" Type="String" />
            <asp:Parameter Name="original_comentsNews" Type="String" />
            <asp:Parameter Name="original_buildingNumber" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idNews" Type="Int32" />
            <asp:Parameter Name="fromUser" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="keywords" Type="String" />
            <asp:Parameter DbType="Date" Name="dateNews" />
            <asp:Parameter Name="attachments" Type="String" />
            <asp:Parameter Name="comentsNews" Type="String" />
            <asp:Parameter Name="buildingNumber" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="buildingNumber" SessionField="buildingNo" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="fromUser" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="keywords" Type="String" />
            <asp:Parameter DbType="Date" Name="dateNews" />
            <asp:Parameter Name="attachments" Type="String" />
            <asp:Parameter Name="comentsNews" Type="String" />
            <asp:Parameter Name="buildingNumber" Type="Int32" />
            <asp:Parameter Name="original_idNews" Type="Int32" />
            <asp:Parameter Name="original_fromUser" Type="String" />
            <asp:Parameter Name="original_title" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_keywords" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateNews" />
            <asp:Parameter Name="original_attachments" Type="String" />
            <asp:Parameter Name="original_comentsNews" Type="String" />
            <asp:Parameter Name="original_buildingNumber" Type="Int32" />
        </UpdateParameters>
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
                    <label > Линк до прикачени документи:</label> <asp:Label ID="Label1" runat="server" Text="Label1" Visible="False"></asp:Label>   <asp:Label runat="server" ID="lblAttach"></asp:Label> <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server"> Симни го документот</asp:LinkButton>
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
                   <asp:Label ID="Label2" runat="server" Text="Label" Visible="False">Документот не е пронајден на сервер</asp:Label>
                           </asp:TableCell>
                   
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
    </div></div>
</asp:Content>
