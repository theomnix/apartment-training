var newdiv;

function getSelected()
{
    var RB1 = document.getElementById("MainContent_coTenantRadio");

    var radio = RB1.getElementsByTagName("input");

    //var label = RB1.getElementsByTagName("label");

    if (radio[0].checked)
    {
        newdiv = document.createElement('div');
        newdiv.innerHTML = "Co-Tenant First Name: <input type=\"text\" id=\"coTenant_firstname\" onblur=\"update1()\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                               "<br/>Co-Tenant Last Name: <input text=\"text\" id=\"coTenant_lastname\" onblur=\"update2()\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                               "<br/>Co-Tenant Phone #: <input text=\"text\" id=\"coTenant_phonenum\" onblur=\"update3()\" pattern=\"[0-9]{3}-[0-9]{3}-[0-9]{4}\" required>";
            document.getElementById('dynamicInput').appendChild(newdiv);
    }
    else
    {
        if (document.getElementById('dynamicInput').innerHTML !== "") {
            document.getElementById('dynamicInput').removeChild(newdiv);
        }
       // <asp:RegularExpressionValidator id="firstname_reg_validator" runat="server" controltovalidate="firstname" validationexpression="[a-zA-Z''-'\s]{1,50}" enableclientscript="true" errormessage="Please enter a valid first name!" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
    }

    //for (var i = 0; i < radio.length; i++) {

    //    if (radio[i].checked) {

    //        alert("SelectedText = " + label[i].innerHTML);

    //        alert("SelectedValue = " + radio[i].value);

    //    }

    //}
}

function update1()
{
    //alert("Hi");
    document.getElementById("hdnfield").value = document.getElementById("coTenant_firstname").value;
    //if (document.getElementById("label") != null)
    //{
    //    alert("It Worked!");
    //}
    //else
    //{
    //    alert("It Failed!");
    //}
}

function update2()
{
    document.getElementById("hdnfield2").value = document.getElementById("coTenant_lastname").value;
}

function update3()
{
    document.getElementById("hdnfield3").value = document.getElementById("coTenant_phonenum").value;
}