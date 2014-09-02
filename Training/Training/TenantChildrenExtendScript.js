var newdiv;
var newdiv2;
var newdiv3;
var newdiv4;
var newdiv5;

function createDivs()
{
    newdiv = document.createElement('div');
    newdiv.innerHTML = "<br/>Child 1-" + "<br/>First Name: <input type=\"text\" id=\"firstname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Last Name: <input text=\"text\" id=\"lastname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Phone #: <input text=\"text\" id=\"phonenum\" pattern=\"[0-9]{3}-[0-9]{3}-[0-9]{4}\" required><br/>";
    newdiv2 = document.createElement('div');
    newdiv2.innerHTML = "<br/>Child 2-" + "<br/>First Name: <input type=\"text\" id=\"firstname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Last Name: <input text=\"text\" id=\"lastname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Phone #: <input text=\"text\" id=\"phonenum\" pattern=\"[0-9]{3}-[0-9]{3}-[0-9]{4}\" required><br/>";
    newdiv3 = document.createElement('div');
    newdiv3.innerHTML = "<br/>Child 3-" + "<br/>First Name: <input type=\"text\" id=\"firstname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Last Name: <input text=\"text\" id=\"lastname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Phone #: <input text=\"text\" id=\"phonenum\" pattern=\"[0-9]{3}-[0-9]{3}-[0-9]{4}\" required><br/>";
    newdiv4 = document.createElement('div');
    newdiv4.innerHTML = "<br/>Child 4-" + "<br/>First Name: <input type=\"text\" id=\"firstname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Last Name: <input text=\"text\" id=\"lastname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Phone #: <input text=\"text\" id=\"phonenum\" pattern=\"[0-9]{3}-[0-9]{3}-[0-9]{4}\" required><br/>";
    newdiv5 = document.createElement('div');
    newdiv5.innerHTML = "<br/>Child 5-" + "<br/>First Name: <input type=\"text\" id=\"firstname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Last Name: <input text=\"text\" id=\"lastname\" pattern=\"[a-zA-Z]{1,25}[' -]?[a-zA-Z]{0,24}\" required>" +
                        "<br/>Phone #: <input text=\"text\" id=\"phonenum\" pattern=\"[0-9]{3}-[0-9]{3}-[0-9]{4}\" required><br/>";
}

function change(divName, dropdown)
{
    createDivs();

    if (document.getElementById(divName).firstChild != null)
    {
        remove(divName, dropdown);
    }
    if (dropdown.selectedIndex == 2) {
        document.getElementById(divName).appendChild(newdiv);
        document.getElementById(divName).childElementCount = 1;
    }
    else if (dropdown.selectedIndex == 3) {
        document.getElementById(divName).appendChild(newdiv);
        document.getElementById(divName).appendChild(newdiv2);
        document.getElementById(divName).childElementCount = 2;
    }
    else if (dropdown.selectedIndex == 4) {
        document.getElementById(divName).appendChild(newdiv);
        document.getElementById(divName).appendChild(newdiv2);
        document.getElementById(divName).appendChild(newdiv3);
        document.getElementById(divName).childElementCount = 3;
    }
    else if (dropdown.selectedIndex == 5) {
        document.getElementById(divName).appendChild(newdiv);
        document.getElementById(divName).appendChild(newdiv2);
        document.getElementById(divName).appendChild(newdiv3);
        document.getElementById(divName).appendChild(newdiv4);
        document.getElementById(divName).childElementCount = 4;
    }
    else if (dropdown.selectedIndex == 6) {
        document.getElementById(divName).appendChild(newdiv);
        document.getElementById(divName).appendChild(newdiv2);
        document.getElementById(divName).appendChild(newdiv3);
        document.getElementById(divName).appendChild(newdiv4);
        document.getElementById(divName).appendChild(newdiv5);
        document.getElementById(divName).childElementCount = 5;
    }
}

function remove(divName, dropdown)
{
    if ((document.getElementById(divName).childElementCount == 5) && (dropdown.selectedIndex == 0 || dropdown.selectedIndex == 1))
    {
        alert("Hey");
        document.getElementById(divName).removeChild(newdiv);
        document.getElementById(divName).removeChild(newdiv2);
        document.getElementById(divName).removeChild(newdiv3);
        document.getElementById(divName).removeChild(newdiv4);
        document.getElementById(divName).removeChild(newdiv5);
    }
    else if (dropdown.selectedIndex == 2)
    {
        //document.getElementById(divName).removeChild(newdiv);
    }
}