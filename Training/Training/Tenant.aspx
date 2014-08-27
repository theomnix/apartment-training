<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tenant.aspx.cs" Inherits="Training._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="TenantExtendScript.js" type="text/javascript"></script>
    <script src="TenantChildrenExtendScript.js" type="text/javascript"></script>
    
    <div id="inquiry1">
        <br /> <br />
        <h4>Tenant HQ</h4>
        <br /> 
        Tenant
        <br />
        First name:
        <asp:TextBox ID="firstname" runat="server" MaxLength="50" />
        <asp:RequiredFieldValidator ID="firstname_validator" runat="server" controltovalidate="firstname" ErrorMessage="Please Enter a first name!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Last name:
        <asp:TextBox ID="lastname" runat="server" />
        <asp:RequiredFieldValidator ID="lastname_validator" runat="server" controltovalidate="lastname" ErrorMessage="Please Enter a last name!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Phone #:
        <asp:TextBox ID="phonenumber" runat="server" />
        <asp:RequiredFieldValidator ID="phonenumber_validator" runat="server" controltovalidate="phonenumber" ErrorMessage="Please Enter a phone number!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Unit #
        <asp:TextBox ID="unitnum" runat="server" visible="true"/>
        <asp:RequiredFieldValidator ID="unitnum_validator" runat="server" controltovalidate="unitnum" ErrorMessage="Please Enter a unit number!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />
        Parking:
        <asp:RadioButtonList ID="parkingButton" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList><br />
        
        <%--How many parking spaces?--%>
        <asp:DropDownList ID="parking" runat="server" visible="false">
            <asp:ListItem Text="---Select---" />
            <asp:ListItem Text="0" />
            <asp:ListItem Text="1" />
            <asp:ListItem Text="2" />
            <asp:ListItem Text="3" />
            <asp:ListItem Text="4" />
            <asp:ListItem Text="5" />
        </asp:DropDownList>
        <br /><br />
        Married:
        <asp:RadioButtonList ID="marriedRadio" runat="server" onclick="getSelected()">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList><br/>
        <div id="dynamicInput"></div><br />

        How many children?
        <asp:DropDownList ID="childrenSelect" runat="server" onchange="change('dynamicInput2', this);">
        <asp:ListItem>---Select---</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <div id="dynamicInput2" visible="false"></div><br />

        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_button"/>

        <asp:Label ID="label" runat="server" ClientIDMode="Static"></asp:Label>

        <asp:HiddenField ID="hdnfield" runat="server" ClientIDMode="Static"/>
        <asp:HiddenField ID="hdnfield2" runat="server" ClientIDMode="Static" />
        <asp:HiddenField ID="hdnfield3" runat="server" ClientIDMode="Static" />
        <!-- Add a HiddenField for each potential value. Each of these fields will correspond with
            an input field that will be dynamically created. Since a maximum of five inquiries will be
            allowed, we will need at least 30 hiddenfields. -->

    </div>

</asp:Content>
