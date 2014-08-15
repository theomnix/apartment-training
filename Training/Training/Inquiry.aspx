<%@ Page Title="Inquiry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="Training.Inquiry" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="inquiry1">
        <br /> <br />
        <h4>Welcome to the Microsoft Flats! Please fill out the inquiry below with your preferences and we will try to locate
            the perfect flat for you. To help us better serve you, you can fill out multiple inquiries with other preferences by
            clicking the "+" button. Inquiries will be given a priority from top to bottom, so make sure the top inquiry is the one
            you prefer the most.
        </h4>
        <br /> 
        Inquiry 1
        <br />
        First name: <asp:TextBox ID="firstname" runat="server" />
        <br />
        Last name:  <asp:TextBox ID="lastname" runat="server" />
        <br />
        Phone#:     <asp:TextBox ID="phonenumber" runat="server" />
        <br />
        Number of baths:     <asp:TextBox ID="numofbaths" runat="server" />
        <br />
        Number of bedrooms:     <asp:TextBox ID="numofbeds" runat="server" />
        <br />
        Square footage:     <asp:TextBox ID="sqrfootage" runat="server" />
        <br />

    </div>
    <script src="testscript.js" type="text/javascript"></script>
    <div id="dynamicInput">
          <br>
    </div>
    <input type="button" value="+" onClick="addInput('dynamicInput');">
    <br /> <br />
    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Submit" />
    
</asp:Content>
