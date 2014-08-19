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
       
       
        <p><b>Closest Building:</b></p>
        <asp:DropDownList ID="Buildingchoose" runat="server" DataSourceID="SqlDataSource1" DataTextField="Building" DataValueField="Building" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=172.50.32.84\SQLEXPRESS; Server=MININT-3L8403G\SQLEXPRESS; Initial Catalog=Apartment; User ID=test; Password=1234" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Building] FROM [Flats]"></asp:SqlDataSource>

        <p><b>Regular Parking Spaces:</b></p>
        <asp:TextBox ID="slider2" runat="server" />
        <asp:SliderExtender ID="Sliders2" runat="server" TargetControlID="slider2" Maximum="250" Minimum="1" Steps="100" BoundControlID="Regular" />
        <asp:Textbox ID="Regular" runat="server" />
        
       
        <p><b>Handicap Spaces:</b></p>
        <asp:TextBox ID="slider1" runat="server" />
        <asp:SliderExtender ID="Slider" runat="server" TargetControlID="slider1" Maximum="50" Minimum="1" Steps="50" BoundControlID="Handicap" />
        <asp:TextBox ID="Handicap" runat="server" />
        <asp:FilteredTextBoxExtender runat="server" ID="filterhandicap" TargetControlID="Handicap" FilterType="Numbers" />
        <p><b>Compact Spaces:</b></p>
        <asp:TextBox ID="slider3" runat="server" />
        <asp:SliderExtender ID-="Sliders3" runat="server" TargetControlID="slider3" Maximum="50" Minimum="1" Steps="50" BoundControlID="Compact" />
        <asp:TextBox ID="Compact" runat="server" />
        <p><b>Is it Covered?</b></p>
        <asp:RadioButtonList ID="Covered" runat="server">
            <asp:ListItem>YES</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:RadioButtonList>
       <asp:Button ID="but" runat="server" Text="ADD" OnClick="TEST_Click" />
        

    
    </div>
    

</asp:Content>

