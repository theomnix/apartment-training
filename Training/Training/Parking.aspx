<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parking.aspx.cs" Inherits="Training.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p><b>Choose the Building That the New Parking Lot is Closest to:</b></p>
        <asp:DropDownList ID="Buildingchoose" runat="server" DataSourceID="SqlDataSource1" DataTextField="Building" DataValueField="Building" OnSelectedIndexChanged="Buildingchoose_SelectedIndexChanged" />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApartmentConnectionString %>" SelectCommand="SELECT [Building] FROM [Flats]"></asp:SqlDataSource>

        <p><b>Total Parking Spots:</b></p>
        <asp:TextBox ID="Total" runat="server" />
        <asp:RegularExpressionValidator ID="Numberonly" runat="server" ControlToValidate"Total" ErrorMessage="Numbers ONLY" ValidationExpression="\d+" />
    
    </div>
    </form>
</body>
</html>
