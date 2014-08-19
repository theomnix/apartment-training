<%@ Page Title="Flats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flat.aspx.cs" Inherits="Training.Parking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h4>Find the right flat for you! Enter your first and last name below:</h4>
    First name: <asp:TextBox ID="firstname" runat="server" />
    <br /> <br />
    Last name: <asp:TextBox ID="lastname" runat="server" />
    <br /> <br />
    <asp:Button ID="Search" Text="Search" runat="server" OnClick="Search_Click" />
    <br /> <br />
    <asp:TextBox ID="results" runat="server" Height="157px" Width="422px" />


    <!-- If inquiry is found, only display flats that match the results in the inquiry.
        Otherwise, simply display all available flats.  -->
</asp:Content>
