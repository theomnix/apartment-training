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
        
            <h3>Get a Parking Space Today!</h3>
            <asp:DropDownList ID="LotChoose" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="LotNumber" DataValueField="LotNumber" OnSelectedIndexChanged="LotChoose_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApartmentConnectionString2 %>" SelectCommand="SELECT [LotNumber] FROM [Parking]"></asp:SqlDataSource>
            <asp:DropDownList ID="SpotChoose" runat="server" DataSourceID="SqlDataSource3" DataTextField="SpotID" DataValueField="SpotID" />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ApartmentConnectionString2 %>" SelectCommand="getownerlessspots" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="LotChoose" Name="LotNumber" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="hidcomp" DefaultValue="" Name="Compact" PropertyName="Text" Type="Byte" />
                    <asp:ControlParameter ControlID="hidhand" DefaultValue="" Name="Handicapped" PropertyName="Text" Type="Byte" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:RadioButtonList ID="SpotType" runat="server" OnSelectedIndexChanged="SpotType_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Selected="True">Regular</asp:ListItem>
                <asp:ListItem>Compact</asp:ListItem>
                <asp:ListItem>Handicap</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="hidcomp" runat="server" Visible="false" Text="0" />
            <asp:TextBox ID="hidhand" runat="server" Visible="false" Text="0" />
            <asp:TextBox ID="NewOwner" runat="server" />
            <asp:TextBoxWatermarkExtender ID="textwater" runat="server" TargetControlID="NewOwner" WatermarkText="Enter Tenant ID" />
            <asp:FilteredTextBoxExtender ID="OwnerNumber" runat="server" TargetControlID="NewOwner" FilterType="Numbers" />
            <asp:Button ID="Claimbutton" runat="server" Text="Claim Parking Spot" OnClick="Claimbutton_Click" /><br />
        <asp:TextBox ID="adminpass" runat="server" OnTextChanged="adminpass_TextChanged" TextMode="Password"  AutoPostBack="true"/>
        <asp:Button ID="AButton" Text="Admin Login" runat="server" Enabled="false" />
        
        <asp:Panel ID="ThePanel" runat="server" Visible="true" BorderWidth="30" BorderColor="Yellow" BackColor="Pink">
                <h3>New Parking Lot:</h3>
        <p><b>Closest Building:</b></p>
        <asp:DropDownList ID="Buildingchoose" runat="server" DataSourceID="SqlDataSource4" DataTextField="Building" DataValueField="Building" />
        

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ApartmentConnectionString2 %>" SelectCommand="SELECT DISTINCT [Building] FROM [Flats]"></asp:SqlDataSource>
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=172.50.32.84\SQLEXPRESS; Server=MININT-3L8403G\SQLEXPRESS; Initial Catalog=Apartment; User ID=test; Password=1234" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Building] FROM [Flats]" ></asp:SqlDataSource>

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
        <asp:Button ID="canc" runat="server" Text="Cancel" />
        </asp:Panel>
        
        <asp:ModalPopupExtender ID="ModalPop" runat="server" PopupControlID="ThePanel" TargetControlID="AButton" DropShadow="true" CancelControlID="canc" Drag="true"/>

    
    </div>
    
    

</asp:Content>

