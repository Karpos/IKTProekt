<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddManager.aspx.cs" Inherits="MojaZgrada.Pages.Admin.AddManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom:10%;"> 
        <h3 class="text-center">Внесете нов менаџер на стамбен објект:</h3>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Успешен внес" Visible="False"></asp:Label>
        </p>
    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12" ></div>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" >
                
                <div class="form-group">
                    <label for="usr">Име:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" ErrorMessage="Внеси име" ForeColor="#CC0000" CssClass="pull-right" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtIme" cssClass="form-control"  runat="server" CausesValidation="True"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label for="usr">Презиме:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrezime" ErrorMessage="Внеси презиме" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtPrezime" cssClass="form-control"  runat="server"></asp:TextBox>
                </div>
               <div class="form-group">
                        <label for="usr">Е-mail:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Внеси емаил" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Внеси валидна емаил адреса" ForeColor="#CC0000" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" CssClass="pull-right" SetFocusOnError="True"></asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtEmail" cssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                <div class="form-group">
                    <label for="usr">Корисничко име:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUsername" ErrorMessage="Внеси корисничко име" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtUsername" cssClass="form-control"  runat="server"></asp:TextBox>
                </div>
                     <div class="form-group">
                        <label for="pwd">Лозинка:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Внеси лозинка" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtPassword" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Повтори лозинка:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Повтори лозинка" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" ErrorMessage="Лозинките не се исти" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:CompareValidator>
                        </span></span><asp:TextBox ID="txtPassword2" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
          </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                  <div class="form-group">
                            <label for="usr">Адреса:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Внеси адреса" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtAddress" cssClass="form-control"  runat="server"></asp:TextBox>
                        </div>
                  <div class="form-group">
                            <label for="usr">Број на зграда:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtBuildingNo" ErrorMessage="Внеси број на зграда" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtBuildingNo" cssClass="form-control" runat="server" CausesValidation="True" TextMode="Number"></asp:TextBox>
                        </div>
                  <div class="form-group">
                            <label for="usr">Број на стан:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAptNo" ErrorMessage="Внеси број на стан" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtAptNo" cssClass="form-control"  runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                <div class="form-group">
                    <label for="usr">Град:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCity" ErrorMessage="Внеси град" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtCity" cssClass="form-control" runat="server"></asp:TextBox>
                </div>
          <div class="form-group">
                    <label for="usr">Држава:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtState" ErrorMessage="Внеси држава" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtState" cssClass="form-control"  runat="server"></asp:TextBox>
                </div>
               
              
                <div>
                   <br />
                    <asp:Button ID="Button1" CssClass="btn btn-info btn-lg btn-block" runat="server" Text="Додади" OnClick="Button1_Click" />
                </div>
             <asp:Label ID="txtErroMsg"  runat="server" Text="" Font-Size="Larger" ForeColor="Red"></asp:Label>
            </div>
        
         </div>

    </div>
</asp:Content>
