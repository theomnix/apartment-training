<%@ Page Title="Inquiry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="Training.Inquiry" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ScriptManager ID="ScriptMgr" runat="server" EnablePageMethods="true">
                </asp:ScriptManager>

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
        First name: <input type="text" ID="firstname" />
        <br />
        Last name:  <input type="text" ID="lastname" />
        <br />
        Phone#:     <input type="text" ID="phonenumber" />
        <br />
        Number of baths:     <input type="text" ID="numofbaths" />
        <br />
        Number of bedrooms:     <input type="text" ID="numofbeds" />
        <br />
        Square footage:     <input type="text" ID="sqrfootage" />
        <br />

    </div>
    <script src="expandscript.js" type="text/javascript"></script>
    <div id="dynamicInput">
          <br>
    </div>
    <input type="button" value="+" onClick="addInput('dynamicInput');">
    <br /> <br />
    <script src="datascript.js" type="text/javascript"></script>
    <input type="button" value="Process" onClick="processSubmit();" />
    <input type="button" id="Commit" value="Submit" onclick="javascript: GetCityValue()"  ="server" disabled/>
    <script type="text/javascript">
        function GetCityValue() {
            var pageId = '<%=  Page.ClientID %>';
        __doPostBack(pageId, "USA");
    }
    </script>

    
       <asp:Label id="lblInfo" runat="server"></asp:Label>


    <asp:HiddenField ID="hdnfield" runat="server" />
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:HiddenField ID="HiddenField3" runat="server" />
    <asp:HiddenField ID="HiddenField4" runat="server" />
    <asp:HiddenField ID="HiddenField5" runat="server" />
    <asp:HiddenField ID="HiddenField6" runat="server" />
    <asp:HiddenField ID="HiddenField7" runat="server" />
    <asp:HiddenField ID="HiddenField8" runat="server" />
    <asp:HiddenField ID="HiddenField9" runat="server" />
    <asp:HiddenField ID="HiddenField10" runat="server" />
    <asp:HiddenField ID="HiddenField11" runat="server" />
    <asp:HiddenField ID="HiddenField12" runat="server" />
    <asp:HiddenField ID="HiddenField13" runat="server" />
    <asp:HiddenField ID="HiddenField14" runat="server" />
    <asp:HiddenField ID="HiddenField15" runat="server" />
    <asp:HiddenField ID="HiddenField16" runat="server" />
    <asp:HiddenField ID="HiddenField17" runat="server" />
    <asp:HiddenField ID="HiddenField18" runat="server" />
    <asp:HiddenField ID="HiddenField19" runat="server" />
    <asp:HiddenField ID="HiddenField20" runat="server" />
    <asp:HiddenField ID="HiddenField21" runat="server" />
    <asp:HiddenField ID="HiddenField22" runat="server" />
    <asp:HiddenField ID="HiddenField23" runat="server" />
    <asp:HiddenField ID="HiddenField24" runat="server" />
    <asp:HiddenField ID="HiddenField25" runat="server" />
    <asp:HiddenField ID="HiddenField26" runat="server" />
    <asp:HiddenField ID="HiddenField27" runat="server" />
    <asp:HiddenField ID="HiddenField28" runat="server" />
    <asp:HiddenField ID="HiddenField29" runat="server" />
    <asp:HiddenField ID="HiddenField30" runat="server" />
    <!-- Add a HiddenField for each potential value. Each of these fields will correspond with
        an input field that will be dynamically created. Since a maximum of five inquiries will be
        allowed, we will need at least 30 hiddenfields. -->
    
</asp:Content>
