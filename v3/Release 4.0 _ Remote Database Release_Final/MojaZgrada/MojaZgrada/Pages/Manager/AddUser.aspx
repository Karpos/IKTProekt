<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="MojaZgrada.Pages.Manager.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:10%">
     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
        <h3 class="text-center">Внесете нов станар:</h3>
         <p>
             <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#009900" Text="" Visible="False"></asp:Label>
         </p>
    
      <div class="col-md-12 col-sm-12">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" >


      
                <div class="form-group">
                    <label for="usr">Име:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" ErrorMessage="Внеси име" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtIme" cssClass="form-control"  runat="server"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label for="usr">Презиме::</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внеси презиме" ForeColor="#CC0000" ControlToValidate="txtPrezime" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtPrezime" cssClass="form-control"  runat="server"></asp:TextBox>
                </div>
               <div class="form-group">
                        <label for="usr">Е-mail:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внеси емаил" ForeColor="#CC0000" ControlToValidate="txtEmail" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Внеси валидна емаил адреса" ForeColor="#CC0000" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="txtEmail" CssClass="pull-right" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtEmail" cssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                <div class="form-group">
                    <label for="usr">Корисничко име:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Внеси корисничко име" ForeColor="#CC0000" ControlToValidate="txtUsername" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsername" cssClass="form-control"  runat="server"></asp:TextBox>
                </div>
                     <div class="form-group">
                        <label for="pwd">Лозинка:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Внеси лозинка" ForeColor="#CC0000" ControlToValidate="txtPassword" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                         </span></span>&nbsp;<asp:TextBox ID="txtPassword" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    
          </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" >
            <div class="form-group">
                        <label for="pwd">Повтори лозинка:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Повтори ја лозниката" ForeColor="#CC0000" ControlToValidate="txtPassword2" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </span></span>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" ErrorMessage="Лозинките не се исти" ForeColor="#CC0000" CssClass="pull-right" SetFocusOnError="True"></asp:CompareValidator>
                        <asp:TextBox ID="txtPassword2" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                  <div class="form-group">
                            <label for="usr">Адреса:</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Внеси адреса" ForeColor="#CC0000" ControlToValidate="txtAddress" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                           <asp:TextBox ID="txtAddress" cssClass="form-control"  runat="server"></asp:TextBox>
                        </div>
                 
                  <div class="form-group">
                            <label for="usr">Број на стан:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Внеси број на стан" ForeColor="#CC0000" ControlToValidate="txtAptNo" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtAptNo" cssClass="form-control number"  runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                <div class="form-group">
                    <label for="usr">Град:</label>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Внеси град" ForeColor="#CC0000" ControlToValidate="txtCity" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   
                    <asp:TextBox ID="txtCity" cssClass="form-control" runat="server"></asp:TextBox>
                </div>
          <div class="form-group">
                    <label for="usr">Држава:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Внеси држава" ForeColor="#CC0000" ControlToValidate="txtState" CssClass="pull-right" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtState" cssClass="form-control"  runat="server" CausesValidation="True"></asp:TextBox>
                </div>
               
          
            </div>
           <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12" style="align-content:center">
                   <br />
                    <asp:Button ID="Button2" CssClass="btn btn-info btn-lg btn-block" runat="server" Text="Додади" OnClick="Button1_Click" />
                </div>
          <asp:Label ID="txtErroMsg"  runat="server" Text="" Font-Size="Larger" ForeColor="Red"></asp:Label>
        
         </div>

    </div>

        </div>

</asp:Content>
