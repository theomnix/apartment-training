var newdiv;

function getSelected()
{
    var RB1 = document.getElementById("MainContent_marriedRadio");

    var radio = RB1.getElementsByTagName("input");

    //var label = RB1.getElementsByTagName("label");

    if (radio[0].checked)
    {
            newdiv = document.createElement('div');
            newdiv.innerHTML = "Spouses First Name: <input type='text' id='firstname'>" +
                               "<br/>Spouses Last Name: <input text='text' id='lastname'>" +
                               "<br/>Spouses Phone #: <input text='text' id='phonenum'>";
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