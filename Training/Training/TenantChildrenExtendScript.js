var newdiv;

function change(divName, dropdown)
{
    if (document.getElementById(divName).innerHTML !== "")
    {
        remove(divName);
    }
    newdiv = document.createElement('div');
    if (dropdown.selectedIndex == 2) {
        newdiv.innerHTML = "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'>";
    }
    else if (dropdown.selectedIndex == 3) {
        newdiv.innerHTML = "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'>";
    }
    else if (dropdown.selectedIndex == 4) {
        newdiv.innerHTML = "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>";
    }
    else if (dropdown.selectedIndex == 5) {
        newdiv.innerHTML = "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>";
    }
    else if (dropdown.selectedIndex == 6) {
        newdiv.innerHTML = "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>" +
                           "<br/>First Name: <input type='text' id='firstname'>" +
                           "<br/>Last Name: <input text='text' id='lastname'>" +
                           "<br/>Phone #: <input text='text' id='phonenum'><br/>";
    }
    document.getElementById(divName).appendChild(newdiv);
}

function remove(divName)
{
    document.getElementById(divName).removeChild(newdiv);
}

