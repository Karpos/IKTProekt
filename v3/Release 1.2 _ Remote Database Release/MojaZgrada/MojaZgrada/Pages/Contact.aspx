<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MojaZgrada.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      <div class="container bg-grey" style="margin-bottom:10%">
        <h2 class="text-center">Контакт</h2>
          <br />
         
        <div class="row ">
            <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2964.8209961235084!2d21.40736001463672!3d42.004117065498995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13541443605aa4ab%3A0x33d56647e5b87264!2sFaculty+of+Computer+Science+and+Engineering!5e0!3m2!1sen!2s!4v1462206458495" width="450px" height="250px" frameborder="0" style="border:0"></iframe>
           
                <p>Контактирајте не нас, ние ќе ви одговориме во наредните 24 часа.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span> Скопје, Македонија</p>
                <p><span class="glyphicon glyphicon-phone"></span> +389 078 123 456</p>
                <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
            </div>
            <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Име" type="text" required>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Емаил" type="email" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <textarea class="form-control" id="comments" name="comments" placeholder="Коментар" rows="8"></textarea>
                 </div></div>
                <br />
                    <div class="row">
                    <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12 form-group">
                        <button class="btn btn-primary center-block " type="submit">Испрати</button>
                    </div>
                </div>
            </div>
        </div>
   
       </div>  
</asp:Content>
