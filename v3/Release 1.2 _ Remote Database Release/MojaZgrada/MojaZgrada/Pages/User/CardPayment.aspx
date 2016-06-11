<%@ Page Title="" EnableEventValidation="false"  Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="CardPayment.aspx.cs" Inherits="MojaZgrada.Pages.User.CardPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-12 col-sm-12">
        <div class="col-md-2 col-sm-12">

        </div>
        <div class="col-md-4">
            
          
           

           <div class="form-group">
                    <label for="usr">Сума:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" ErrorMessage="Внесете сума" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtIme" cssClass="form-control"  runat="server"></asp:TextBox>

                </div>
              <div class="form-group">
                    <label for="usr">Коментар:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Внесете сума" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:TextBox ID="TextBox1" cssClass="form-control"  runat="server"></asp:TextBox>

                </div>
            <div class="form-group">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

                <br />
                <br />
                    
            
            </div>
        </div>

    </div>
     <br />
    <br />
    <br />
    
     <%
         string DateFor = Calendar1.ToString();
         string Comment = TextBox1.ToString();
         string buildingNo = Session["buildingNo"].ToString();
         string username = Session["login"].ToString();
         string apt = Session["apt"].ToString();

         





         string clientId = "180000069";                   //Merchant Id defined by bank to user
         string amount = txtIme.Text;                        //Transaction amount
         string oid =   Guid.NewGuid().ToString().GetHashCode().ToString("x");                               //Order Id. Must be uniuqe. If left blank, system will generate a unique one.
         string okUrl = "http://localhost:1042/3PayHostingSample/3DPayHostingResultPage.aspx";                      //URL which client be redirected if authentication is successful
         string failUrl = "http://localhost:1042/3PayHostingSample/3DPayHostingResultPage.aspx";                    //URL which client be redirected if authentication is not successful
         string rnd = DateTime.Now.ToString();           //A random number, such as date/time

         string currency = "807";                        //Currency code, 949 for TL, ISO_4217 standard
         string instalmentCount = "";                    //Instalment count, if there is no instalment should left blank
         string transactionType = "Auth";                //Transaction type
         string storekey = "SKEY3545";                     //Store key value, defined by bank.
         string hashstr = clientId + oid + amount + okUrl + failUrl + transactionType + instalmentCount + rnd + storekey;
         System.Security.Cryptography.SHA1 sha = new System.Security.Cryptography.SHA1CryptoServiceProvider();
         byte[] hashbytes = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(hashstr);
         byte[] inputbytes = sha.ComputeHash(hashbytes);

         String hash = Convert.ToBase64String(inputbytes); //Hash value used for validation

         //Parameters needed for payment and 3D authentication       
        %>
        <form action="https://entegrasyon.asseco-see.com.tr/fim/est3Dgate" id="paymentForm" method="post" >
                       
                  
     <input type="hidden" name="clientid" value="<%=clientId%>" />
        <input type="hidden" name="amount" value="<%=amount%>" />
        <input type="hidden" name="oid" value="<%=oid%>" />
        <input type="hidden" name="okUrl" value="<%=okUrl%>" />
        <input type="hidden" name="failUrl" value="<%=failUrl%>" />
        <input type="hidden" name="islemtipi" value="<%=transactionType%>" />
        <input type="hidden" name="taksit" value="<%=instalmentCount%>" />
        <input type="hidden" name="rnd" value="<%=rnd%>" />
        <input type="hidden" name="hash" value="<%=hash%>" />
        <input type="hidden" name="currency" value="<%= currency %>" />
        <input type="hidden" name="storetype" value="3d_pay_hosting" />
        <input type="hidden" name="refreshtime" value="0" />

        <input type="hidden" name="printBillTo" value="true">
         <input type="hidden" name="ShipToCompany" value="Shipping Company">
         <input type="hidden" name="ShipToName" value="Ship John Doe"> 
        <input type="hidden" name="ShipToStreet1" value="Address line 1">

              <input type="submit" value="Submit" class="buttonClass" />

          </form>
              
                         
</asp:Content>
