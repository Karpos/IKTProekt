<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="PaymentTicket.aspx.cs" Inherits="MojaZgrada.Pages.Manager.PaymentTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-bottom:10%; margin-left:3%">

        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >

              <h2 class="text-center"> Внеси уплата: </h2>
         
                </div>
            <div class="row">
                <div class="form-group form-inline">
                    <label for="usr">Изберете број на стан:</label>
                   <asp:DropDownList ID="DropDownList2" runat="server"  AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="numberApt" DataValueField="name" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" ></asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MojaZgradaConnection %>" SelectCommand="SELECT [name], [surname], [username], [numberApt] FROM [users] WHERE (([type] = @type) AND ([buildingNumber] = @buildingNumber))">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="user" Name="type" QueryStringField="type" Type="String" />
                            <asp:SessionParameter Name="buildingNumber" SessionField="buildingNo" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
                </div>
            <div class="row">
                <div class="form-group form-inline">
                    <label for="usr">За:</label>
                     <asp:TextBox ID="txtIme" cssClass="form-control"  runat="server" Enabled="False"></asp:TextBox>
                  
                </div>
                </div>
            <div class="row">
                 <div class="form-group form-inline">
                    <label for="usr">За месец:</label>
                   
                                 <asp:Calendar AutoPostBack="false" ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                     <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Избери датум" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div></div>
            <div class="row">
              <div class="form-group">
                    <label for="usr">Уплата (во денари):</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUplata" ErrorMessage="Внеси уплата" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtUplata" cssClass="form-control"  runat="server" TextMode="Number" ></asp:TextBox>
                  
                </div></div>
            <div class="row">
               <div class="form-group">
                    <label for="usr">Број на уплата/каса прими:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBrUplata" ErrorMessage="Внеси број на уплата" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtBrUplata" cssClass="form-control"  runat="server" ></asp:TextBox>
                  
                </div></div>
            <div class="row">
               <div class="form-group ">
                    <label for="usr">Коментар:</label>
                     <asp:TextBox ID="txtComent" cssClass="form-control"  runat="server"></asp:TextBox>
                   
                </div></div>
            <div class="row">
               <asp:Button ID="btnVnesiUplata" runat="server" Text="Внеси уплата" OnClick="btnVnesiUplata_Click"  />
                </div>
 &nbsp;<asp:Label ID="lblResult" runat="server"></asp:Label>

 </div>

    </div>

    
</asp:Content>
