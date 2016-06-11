<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="VnesiSoopstenie.aspx.cs" Inherits="MojaZgrada.Pages.Manager.VnesiSoopstenie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
     <div style="margin-bottom:10%; margin-left:3%">
          <div class="row"><div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">      
        <h4><b>Наслов: </b></h4>
          </div></div>
         <div class="row"><div class=" col-md-6 col-lg-6 col-sm-12 col-xs-12"> 
        <asp:TextBox ID="txtNaslov" cssClass="form-control" runat="server" Columns="33" /> <asp:RequiredFieldValidator runat="server" ID="rfvNaslov" ControlToValidate="txtNaslov" ErrorMessage="Насловот не смее да биде празен" ForeColor="Red"/>
         </div></div>
         <div class="row">
        <div class=" col-md-6 col-lg-6 col-sm-12 col-xs-12"> 
         <h4><b>Опис:</b></h4>

        </div></div>
         <div class="row">
         <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12"> 
        <asp:TextBox ID="txtOpis" runat="server" cssClass="form-control" TextMode="multiline" Columns="35" Rows="7" /> <asp:RequiredFieldValidator runat="server" ID="rfvOpis" ControlToValidate="txtOpis" ErrorMessage="Описот не смее да биде празен" ForeColor="Red"/>

         </div></div>
         <div class="row">
        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12"> 
         <h4><b>Линк до прикачен документ:</b></h4>
            </div>
        </div>
         <div class="row">
         <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12"> 
        <asp:TextBox ID="txtPrikacuvanja" cssClass="form-control" runat="server" Columns="33" />
        </div></div>
        <br />
        <br />
         <div class="row">
         <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12"> 
        <asp:Button ID="btnSoostenie" runat="server" cssClass="btn btn-primary" Text="Објави соопштение" OnClick="btnSoostenie_Click" /><br /><br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>    
              </div></div>
   </div>
   
</asp:Content>
