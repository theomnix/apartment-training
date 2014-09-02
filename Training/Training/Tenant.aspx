<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tenant.aspx.cs" Inherits="Training._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="TenantExtendScript.js" type="text/javascript"></script>
    <script src="TenantChildrenExtendScript.js" type="text/javascript"></script>
    
    <div id="inquiry1">
        <br /> <br />
        <h4>Flat Reservation Info</h4>
        <br />
        First name:
        <asp:TextBox ID="firstname" runat="server" MaxLength="50" />
        <asp:RequiredFieldValidator ID="firstname_validator" runat="server" controltovalidate="firstname" ErrorMessage="Please enter a first name!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator id="firstname_reg_validator" runat="server" controltovalidate="firstname" validationexpression="[a-zA-Z''-'\s]{1,50}" enableclientscript="true" errormessage="Please enter a valid first name!" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        Last name:
        <asp:TextBox ID="lastname" runat="server" MaxLength="50"/>
        <asp:RequiredFieldValidator ID="lastname_validator" runat="server" controltovalidate="lastname" ErrorMessage="Please enter a last name!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator id="lastname_reg_validator" runat="server" controltovalidate="lastname" validationexpression="[a-zA-Z''-'\s]{1,50}" enableclientscript="true" errormessage="Please enter a valid last name!" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        Phone #:
        <asp:TextBox ID="phonenumber" runat="server" MaxLength="12" />
        <asp:RequiredFieldValidator ID="phonenumber_validator" runat="server" controltovalidate="phonenumber" ErrorMessage="Please enter a phone number!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator id="phonenumber_reg_validator" runat="server" controltovalidate="phonenumber" validationexpression="\d{3}-\d{3}-\d{4}" enableclientscript="true" errormessage="Please enter format such as: 000-000-0000" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        Unit #
        <asp:TextBox ID="unitnum" runat="server" visible="true" MaxLength="4" />
        <asp:RequiredFieldValidator ID="unitnum_validator" runat="server" controltovalidate="unitnum" ErrorMessage="Please enter a unit number!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator id="unitnum_reg_validator" runat="server" controltovalidate="unitnum" validationexpression="[a-zA-Z]\d{3}" enableclientscript="true" errormessage="Please enter format such as: A103" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        
        <br /><br />
        Parking:
        <asp:RadioButtonList ID="parkingButton" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="parking_validator" runat="server" controltovalidate="parkingButton" ErrorMessage="Please select parking option!" ForeColor="Red"></asp:RequiredFieldValidator><br />
        
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
        Co-Tenant:
        <asp:RadioButtonList ID="coTenantRadio" runat="server" onclick="getSelected()">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="coTenant_validator" runat="server" controltovalidate="coTenantRadio" ErrorMessage="Please select marriage option!" ForeColor="Red"></asp:RequiredFieldValidator><br/>
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
        <asp:RequiredFieldValidator ID="children_validator" runat="server" controltovalidate="childrenSelect" InitialValue="---Select---" ErrorMessage="Please select an option from the dropdown menu!" ForeColor="Red"></asp:RequiredFieldValidator>
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
