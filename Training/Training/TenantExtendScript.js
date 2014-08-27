var newdiv;

function getSelected()
{
    var RB1 = document.getElementById("MainContent_marriedRadio");

    var radio = RB1.getElementsByTagName("input");

    //var label = RB1.getElementsByTagName("label");

    if (radio[0].checked)
    {
            newdiv = document.createElement('div');
            newdiv.innerHTML = "Spouses First Name: <input type='text' id='spouse_firstname' onblur='update1()'>" +
                               "<br/>Spouses Last Name: <input text='text' id='spouse_lastname' onblur='update2()'>" +
                               "<br/>Spouses Phone #: <input text='text' id='spouse_phonenum' onblur='update3()'>";
            document.getElementById('dynamicInput').appendChild(newdiv);
    }
    else
    {
        if (document.getElementById('dynamicInput').innerHTML !== "") {
            document.getElementById('dynamicInput').removeChild(newdiv);
        }
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
    document.getElementById("hdnfield").value = document.getElementById("spouse_firstname").value;
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
    document.getElementById("hdnfield2").value = document.getElementById("spouse_lastname").value;
}

function update3()
{
    document.getElementById("hdnfield3").value = document.getElementById("spouse_phonenum").value;
}