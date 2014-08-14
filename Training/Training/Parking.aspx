<%@ Page Title="Parking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parking.aspx.cs" Inherits="Training.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
    
    <div>
        <p><b>Choose the Building That the New Parking Lot is Closest to:</b></p>
        <asp:DropDownList ID="Buildingchoose" runat="server" DataSourceID="SqlDataSource2" DataTextField="Building" DataValueField="Building"  />
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApartmentConnectionString2 %>" SelectCommand="SELECT [Building] FROM [Flats]"></asp:SqlDataSource>

        <p><b>Total Parking Spots:</b></p>
        <asp:TextBox ID="Total" runat="server" />
        <asp:RegularExpressionValidator ID="Numberonly" runat="server" ControlToValidate="Total" ErrorMessage="Numbers ONLY" ValidationExpression="\d+" />

        <p><b>Covered?:</b></p>
        <asp:RadioButtonList ID="Coveredlist" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
    
         <p><b>Handicap Parking Spots:</b></p>
        <asp:TextBox ID="Handicap" runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Handicap" ErrorMessage="Numbers ONLY" ValidationExpression="\d+" />

         <p><b>Compact Parking Spots:</b></p>
        <asp:TextBox ID="Compact" runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Compact" ErrorMessage="Numbers ONLY" ValidationExpression="\d+" />
    </div>
    
</asp:Content>
