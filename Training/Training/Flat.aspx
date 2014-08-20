﻿<%@ Page Title="Flats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flat.aspx.cs" Inherits="Training.Parking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h4>Find info for your flat! Or, simply press "Search" to see all flats!</h4>
    First name: <asp:TextBox ID="firstname" runat="server" />
    <br /> <br />
    Last name: <asp:TextBox ID="lastname" runat="server" />
    <br /> <br />
    <asp:Button ID="Search" Text="Search" runat="server" OnClick="Search_Click" />
    <br /> <br />
    <asp:TextBox id="results" TextMode="multiline" Columns="130" Rows="15" runat="server" ReadOnly ="true"/>

</asp:Content>
