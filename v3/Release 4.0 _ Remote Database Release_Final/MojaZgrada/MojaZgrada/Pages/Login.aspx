<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MojaZgrada.Pages.Login" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

       <div class="row" style="margin-top:3%">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Најава</div>
                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label for="email">Корисничко име:</label>
                                  <asp:TextBox ID="txtLogin" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Внесете корисничко име *" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label for="lozinka">Лозинка:</label>
                                  <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внесете лозинка *" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                </div>
                               
                              <div style="text-align:center">
                                 <asp:Button ID="Button1" CssClass="btn btn-danger"  runat="server" Text="Најави се" OnClick="btnLogin_Click" />
                                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                                  </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
        </div>

</asp:Content>
