var newdiv;
var newdiv2;
var clicked = true;

function onClick(divName)
{
    //alert("Button Works!");
    if (clicked)
    {
        newdiv = document.createElement('div');
        newdiv.innerHTML = "First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'>";
        document.getElementById(divName).appendChild(newdiv);
        clicked = false;
    }
    else
    {
        
    }
}

function onChange(divName)
{
    document.getElementById(divName).removeChild(newdiv);
    clicked = true;
}