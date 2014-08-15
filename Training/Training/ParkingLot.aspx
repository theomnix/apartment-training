<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ParkingLot.aspx.cs" Inherits="Training.ParkingLot" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    
    <div>
        <script type="text/javascript">
            function clickMe() {
                $("#MyDialog").dialog("open");
                alert("I have been clicked");
                return true;
            }

        </script>
        
        <asp:ToolKitScriptManager ID="AJAX" runat="server"  />
        <asp:TextBox ID="textcomments" TextMode="MultiLine" Columns="60" Rows="8" runat="server" />
       
        <asp:Button ID="but" runat="server" Text="Do IT!!" OnClick="TEST_Click" />
        <asp:
        <asp:TextBox ID="slider1" runat="server" />
        <asp:SliderExtender ID="Slider" runat="server" TargetControlID="slider1" Maximum="250" Minimum="1" Steps="100" BoundControlID="Handicap" />
       
        <asp:TextBox ID="Handicap" runat="server" OnTextChanged="TEST_Click" />
        <asp:FilteredTextBoxExtender runat="server" ID="filterhandicap" TargetControlID="Handicap" FilterType="Numbers" />
        <asp:RegularExpressionValidator ID="NumbersOnly" ControlToValidate="Handicap" runat="server" ValidationExpression="\d+" ErrorMessage="Numbers ONLY" />
        

    
    </div>
    

</asp:Content>

