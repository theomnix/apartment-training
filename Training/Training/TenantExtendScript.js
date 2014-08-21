var newdiv;
var newdiv2;
var yes_clicked = false;

function yesOnClick(divName)
{
    //alert("Button Works!");
    if (!yes_clicked)
    {
        newdiv = document.createElement('div');
        newdiv.innerHTML = "First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'>";
        document.getElementById(divName).appendChild(newdiv);
        yes_clicked = true;
    }
}

function noOnClick(divName)
{
    if (yes_clicked)
    {
        document.getElementById(divName).removeChild(newdiv);
        yes_clicked = false;
    }
}