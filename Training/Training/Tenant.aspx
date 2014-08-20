<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tenant.aspx.cs" Inherits="Training._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="inquiry1">
        <br /> <br />
        <h4>Tenant HQ</h4>
        <br /> 
        Tenant
        <br />
        First name:
        <asp:TextBox ID="firstname" runat="server" />
        <br />
        Last name:
        <asp:TextBox ID="lastname" runat="server" />
        <br />
        Phone #:
        <asp:TextBox ID="phonenumber" runat="server" />
        <br />
        Unit #:
        <asp:TextBox ID="unitnum" runat="server" />
        <br /><br />
        Parking:
        Yes
        <asp:RadioButton ID="parking1" runat="server" GroupName="parkingRadioButton"/>
        No
        <asp:RadioButton ID="parking2" runat="server" GroupName="parkingRadioButton"/>
        <br />
        How many parking spaces?
        <asp:DropDownList ID="parking" runat="server">
            <asp:ListItem Text="---Select---" />
            <asp:ListItem Text="0" />
            <asp:ListItem Text="1" />
            <asp:ListItem Text="2" />
            <asp:ListItem Text="3" />
            <asp:ListItem Text="4" />
            <asp:ListItem Text="5" />
        </asp:DropDownList>
        <br /><br />
        Co-Tenant:
        <script src="TenantExtendScript.js" type="text/javascript"></script>
        Yes<input type="radio" name="CoTenant" value="yes" id="CoTenantYes" onClick="yesOnClick('dynamicInput');"/>
        No<input type="radio" name="CoTenant" value="no" id="CoTenantNo" onClick="noOnClick('dynamicInput');"/><br/>
        <div id="dynamicInput"></div><br />

        How many children?
        <asp:DropDownList ID="children" runat="server">
            <asp:ListItem Text="---Select---" />
            <asp:ListItem Text="0" />
            <asp:ListItem Text="1" />
            <asp:ListItem Text="2" />
            <asp:ListItem Text="3" />
            <asp:ListItem Text="4" />
            <asp:ListItem Text="5" />
        </asp:DropDownList>
        <br /><br />

    
    <asp:Button ID="submit" runat="server" Text="Submit" />

    <asp:HiddenField ID="hdnfield" runat="server" />
    <!-- Add a HiddenField for each potential value. Each of these fields will correspond with
        an input field that will be dynamically created. Since a maximum of five inquiries will be
        allowed, we will need at least 30 hiddenfields. -->

    

</asp:Content>
