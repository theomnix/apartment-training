var newdiv;

function create(divName)
{
    //alert("Button Works!");
    newdiv = document.createElement('div');
    newdiv.innerHTML = "<br/>First Name: <input type='text' id='firstname'>";
    document.getElementById(divName).appendChild(newdiv);
}

function remove(divName)
{
    //alert("Button Works!");
    document.getElementById(divName).removeChild(newdiv);
}