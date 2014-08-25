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
        First name: <input type="text" ID="firstname" data-parsley-trigger="change" required/>
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
    <input type="button" name="Commit" value="Submit" id="commit" onClick="javascript: GetCityValue()"/>
    <script type="text/javascript">
        document.getElementById('commit').onmouseover =
            function processSubmit() {
                count = getCounter();

                if (count === 2) {
                    document.getElementById('MainContent_HiddenField25').value = document.getElementById('firstname').value
                    document.getElementById('MainContent_HiddenField26').value = document.getElementById('lastname').value
                    document.getElementById('MainContent_HiddenField27').value = document.getElementById('phonenumber').value
                    document.getElementById('MainContent_HiddenField28').value = document.getElementById('numofbaths').value
                    document.getElementById('MainContent_HiddenField29').value = document.getElementById('numofbeds').value
                    document.getElementById('MainContent_HiddenField30').value = document.getElementById('sqrfootage').value
                }
                else if (count === 3) {
                    document.getElementById('MainContent_HiddenField25').value = document.getElementById('firstname').value
                    document.getElementById('MainContent_HiddenField26').value = document.getElementById('lastname').value
                    document.getElementById('MainContent_HiddenField27').value = document.getElementById('phonenumber').value
                    document.getElementById('MainContent_HiddenField28').value = document.getElementById('numofbaths').value
                    document.getElementById('MainContent_HiddenField29').value = document.getElementById('numofbeds').value
                    document.getElementById('MainContent_HiddenField30').value = document.getElementById('sqrfootage').value

                    document.getElementById('MainContent_HiddenField1').value = document.getElementById('firstname2').value
                    document.getElementById('MainContent_HiddenField2').value = document.getElementById('lastname2').value
                    document.getElementById('MainContent_HiddenField3').value = document.getElementById('phonenumber2').value
                    document.getElementById('MainContent_HiddenField4').value = document.getElementById('numofbaths2').value
                    document.getElementById('MainContent_HiddenField5').value = document.getElementById('numofbeds2').value
                    document.getElementById('MainContent_HiddenField6').value = document.getElementById('sqrfootage2').value
                }
                else if (count === 4) {
                    document.getElementById('MainContent_HiddenField25').value = document.getElementById('firstname').value
                    document.getElementById('MainContent_HiddenField26').value = document.getElementById('lastname').value
                    document.getElementById('MainContent_HiddenField27').value = document.getElementById('phonenumber').value
                    document.getElementById('MainContent_HiddenField28').value = document.getElementById('numofbaths').value
                    document.getElementById('MainContent_HiddenField29').value = document.getElementById('numofbeds').value
                    document.getElementById('MainContent_HiddenField30').value = document.getElementById('sqrfootage').value

                    document.getElementById('MainContent_HiddenField1').value = document.getElementById('firstname2').value
                    document.getElementById('MainContent_HiddenField2').value = document.getElementById('lastname2').value
                    document.getElementById('MainContent_HiddenField3').value = document.getElementById('phonenumber2').value
                    document.getElementById('MainContent_HiddenField4').value = document.getElementById('numofbaths2').value
                    document.getElementById('MainContent_HiddenField5').value = document.getElementById('numofbeds2').value
                    document.getElementById('MainContent_HiddenField6').value = document.getElementById('sqrfootage2').value

                    document.getElementById('MainContent_HiddenField7').value = document.getElementById('firstname3').value
                    document.getElementById('MainContent_HiddenField8').value = document.getElementById('lastname3').value
                    document.getElementById('MainContent_HiddenField9').value = document.getElementById('phonenumber3').value
                    document.getElementById('MainContent_HiddenField10').value = document.getElementById('numofbaths3').value
                    document.getElementById('MainContent_HiddenField11').value = document.getElementById('numofbeds3').value
                    document.getElementById('MainContent_HiddenField12').value = document.getElementById('sqrfootage3').value
                }
                else if (count === 5) {
                    document.getElementById('MainContent_HiddenField25').value = document.getElementById('firstname').value
                    document.getElementById('MainContent_HiddenField26').value = document.getElementById('lastname').value
                    document.getElementById('MainContent_HiddenField27').value = document.getElementById('phonenumber').value
                    document.getElementById('MainContent_HiddenField28').value = document.getElementById('numofbaths').value
                    document.getElementById('MainContent_HiddenField29').value = document.getElementById('numofbeds').value
                    document.getElementById('MainContent_HiddenField30').value = document.getElementById('sqrfootage').value

                    document.getElementById('MainContent_HiddenField1').value = document.getElementById('firstname2').value
                    document.getElementById('MainContent_HiddenField2').value = document.getElementById('lastname2').value
                    document.getElementById('MainContent_HiddenField3').value = document.getElementById('phonenumber2').value
                    document.getElementById('MainContent_HiddenField4').value = document.getElementById('numofbaths2').value
                    document.getElementById('MainContent_HiddenField5').value = document.getElementById('numofbeds2').value
                    document.getElementById('MainContent_HiddenField6').value = document.getElementById('sqrfootage2').value

                    document.getElementById('MainContent_HiddenField7').value = document.getElementById('firstname3').value
                    document.getElementById('MainContent_HiddenField8').value = document.getElementById('lastname3').value
                    document.getElementById('MainContent_HiddenField9').value = document.getElementById('phonenumber3').value
                    document.getElementById('MainContent_HiddenField10').value = document.getElementById('numofbaths3').value
                    document.getElementById('MainContent_HiddenField11').value = document.getElementById('numofbeds3').value
                    document.getElementById('MainContent_HiddenField12').value = document.getElementById('sqrfootage3').value

                    document.getElementById('MainContent_HiddenField13').value = document.getElementById('firstname4').value
                    document.getElementById('MainContent_HiddenField14').value = document.getElementById('lastname4').value
                    document.getElementById('MainContent_HiddenField15').value = document.getElementById('phonenumber4').value
                    document.getElementById('MainContent_HiddenField16').value = document.getElementById('numofbaths4').value
                    document.getElementById('MainContent_HiddenField17').value = document.getElementById('numofbeds4').value
                    document.getElementById('MainContent_HiddenField18').value = document.getElementById('sqrfootage4').value
                }
                else if (count === 6) {
                    document.getElementById('MainContent_HiddenField25').value = document.getElementById('firstname').value
                    document.getElementById('MainContent_HiddenField26').value = document.getElementById('lastname').value
                    document.getElementById('MainContent_HiddenField27').value = document.getElementById('phonenumber').value
                    document.getElementById('MainContent_HiddenField28').value = document.getElementById('numofbaths').value
                    document.getElementById('MainContent_HiddenField29').value = document.getElementById('numofbeds').value
                    document.getElementById('MainContent_HiddenField30').value = document.getElementById('sqrfootage').value

                    document.getElementById('MainContent_HiddenField1').value = document.getElementById('firstname2').value
                    document.getElementById('MainContent_HiddenField2').value = document.getElementById('lastname2').value
                    document.getElementById('MainContent_HiddenField3').value = document.getElementById('phonenumber2').value
                    document.getElementById('MainContent_HiddenField4').value = document.getElementById('numofbaths2').value
                    document.getElementById('MainContent_HiddenField5').value = document.getElementById('numofbeds2').value
                    document.getElementById('MainContent_HiddenField6').value = document.getElementById('sqrfootage2').value

                    document.getElementById('MainContent_HiddenField7').value = document.getElementById('firstname3').value
                    document.getElementById('MainContent_HiddenField8').value = document.getElementById('lastname3').value
                    document.getElementById('MainContent_HiddenField9').value = document.getElementById('phonenumber3').value
                    document.getElementById('MainContent_HiddenField10').value = document.getElementById('numofbaths3').value
                    document.getElementById('MainContent_HiddenField11').value = document.getElementById('numofbeds3').value
                    document.getElementById('MainContent_HiddenField12').value = document.getElementById('sqrfootage3').value

                    document.getElementById('MainContent_HiddenField13').value = document.getElementById('firstname4').value
                    document.getElementById('MainContent_HiddenField14').value = document.getElementById('lastname4').value
                    document.getElementById('MainContent_HiddenField15').value = document.getElementById('phonenumber4').value
                    document.getElementById('MainContent_HiddenField16').value = document.getElementById('numofbaths4').value
                    document.getElementById('MainContent_HiddenField17').value = document.getElementById('numofbeds4').value
                    document.getElementById('MainContent_HiddenField18').value = document.getElementById('sqrfootage4').value

                    document.getElementById('MainContent_HiddenField19').value = document.getElementById('firstname5').value
                    document.getElementById('MainContent_HiddenField20').value = document.getElementById('lastname5').value
                    document.getElementById('MainContent_HiddenField21').value = document.getElementById('phonenumber5').value
                    document.getElementById('MainContent_HiddenField22').value = document.getElementById('numofbaths5').value
                    document.getElementById('MainContent_HiddenField23').value = document.getElementById('numofbeds5').value
                    document.getElementById('MainContent_HiddenField24').value = document.getElementById('sqrfootage5').value
                }

                document.getElementById('MainContent_hdnfield').value = count;
            }
    </script>

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
    
</asp:Content>
