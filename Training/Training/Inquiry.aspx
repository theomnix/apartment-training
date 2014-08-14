<%@ Page Title="Inquiry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="Training.Inquiry" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    
    <asp:HiddenField ID="hdnAddInput" runat="server" />
    <br />
    <asp:Button ID="btnPlus" OnClientClick="setAdd()" Text="Plus" runat="server" />
    <br />
    <asp:PlaceHolder ID="phInputs" runat="server" />

    <script type="text/javascript">
        function setAdd() {
            var add = document.getElementById('<%=hdnAddInput.ClientID%>');
            add.value = '1';
            return true;
        }
    </script>
    
</asp:Content>
