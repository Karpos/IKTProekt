<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MojaZgrada.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"  method="post" action="https://entegrasyon.asseco-see.com.tr/fim/est3Dgate">
  
    <center>
        
        <%

            string clientId = "180000069";                   //Merchant Id defined by bank to user
            string amount = "10";                  //Transaction amount
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
        <table class="tableClass">
            <tr class="trHeader">
                <td colspan="2">
                Продолжи со уплата
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input  type="submit" value="Плати" class="buttonClass " />
                </td>
            </tr>
        </table>
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
        <input type="hidden" name="refreshtime" value="10" />
    </center>
    
    </form>
</body>
</html>
