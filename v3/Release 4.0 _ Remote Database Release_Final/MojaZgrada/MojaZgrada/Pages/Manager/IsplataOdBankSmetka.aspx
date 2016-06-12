<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="IsplataOdBankSmetka.aspx.cs" Inherits="MojaZgrada.Pages.Manager.IsplataOdBankSmetka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  style="margin-bottom:10%; margin-left:3%">
     <div class="row">
        <h1 class="text-center">Исплата од банкарска сметка</h1>
        <div class="row ">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                <label> Салдо на Благајна</label> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div></div>

<div class="row"> <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
            <label> Салдо во Банка</label>  <asp:Label ID="Label2"  runat="server" Text="Label"> </asp:Label>  </div></div>
            <div class="row">
         
             <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12 text-left">
                    <label for="usr">Префрли сума:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Suma" ErrorMessage="Внеси сума" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="Suma" cssClass="form-control"  runat="server" TextMode="Number" ></asp:TextBox>
                  
                </div></div>
         <div class="row">
            <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <label for="usr">Број на исплата/број на сметка:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBrUplata" ErrorMessage="Внеси Број на уплата" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtBrUplata" cssClass="form-control"  runat="server" MaxLength="16" ></asp:TextBox>
                  
                </div></div>
         <div class="row">
               <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <label for="usr">Коментар:</label>
                     <asp:TextBox ID="txtComent" cssClass="form-control col-md-3"  runat="server"></asp:TextBox>
                   
                </div></div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
               <asp:Button CssClass="btn  btn-primary" ID="btnVnesiUplata" runat="server" Text="Исплати од банка" OnClick="btnVnesiUplata_Click"    />
                </div></div>
        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="txtErrorMsg" runat="server" Visible="False"></asp:Label>

        </div>
        

   
        </div>


</asp:Content>
