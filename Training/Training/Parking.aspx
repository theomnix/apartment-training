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
    
    </div>
    
</asp:Content>
