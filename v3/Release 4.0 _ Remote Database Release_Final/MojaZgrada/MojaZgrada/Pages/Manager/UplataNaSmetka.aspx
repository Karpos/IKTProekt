<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="UplataNaSmetka.aspx.cs" Inherits="MojaZgrada.Pages.Manager.UplataNaSmetka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-bottom:10%; margin-left:3%">
    <div class="row text-center">
        <h1>Уплата на банкарска сметка</h1></div>
        <div class="row">
                <label> Салдо на Благајна</label> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="row">
            <label> Салдо во Банка</label>  <asp:Label ID="Label2"  runat="server" Text="Label"> </asp:Label> </div>
            <div class="row">    
             <div class="form-group">
                    <label for="usr">Префрли сума:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Suma" ErrorMessage="Внеси сума" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="Suma" cssClass="form-control"  runat="server" TextMode="Number" ></asp:TextBox>
                  
                </div></div>
        <div class="row">
            <div class="form-group">
                    <label for="usr">Број на уплата/каса прими:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBrUplata" ErrorMessage="Внеси Број на уплата" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtBrUplata" cssClass="form-control"  runat="server" ></asp:TextBox>
                  
                </div></div>
        <div class="row">
               <div class="form-group ">
                    <label for="usr">Коментар:</label>
                     <asp:TextBox ID="txtComent" cssClass="form-control col-md-3"  runat="server"></asp:TextBox>
                   
                </div></div>
        <br />
            <div class="row">
               <asp:Button ID="btnVnesiUplata"  CssClass="btn btn-primary" runat="server" Text="Внеси уплата" OnClick="btnVnesiUplata_Click"    />
                </div>
        
        

        </div>

</asp:Content>
