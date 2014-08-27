var counter = 2;
var limit = 6;
function addInput(divName) {
    if (counter == limit) {
        alert("You can only submit up to 5 inquiries!");
    }
    else {
        var newdiv = document.createElement('div');
        newdiv.setAttribute("id", "test" + counter + "");
        newdiv.innerHTML = "Inquiry " + counter + "<br><p id='f" + counter + "'> First name:<input type='text' id='firstname" + counter + "'>" +
            "<br/>Last name: <input type='text' id='lastname" + counter + "'>" +
            "<br/>Phone#: <input type='text' id='phonenumber" + counter + "'>" +
            "<br/>Number of baths: <input type='text' id='numofbaths" + counter + "'>" +
            "<br/>Number of bedrooms: <input type='text' id='numofbeds" + counter + "'>" +
            "<br/>Square footage: <input type='text' id='sqrfootage" + counter + "'><br><br></p>";
        document.getElementById(divName).appendChild(newdiv);
        if (counter === 2) {
            document.getElementById('firstname2').value = document.getElementById('firstname').value;
            firstname2.value = firstname.value;
            lastname2.value = lastname.value;
            phonenumber2.value = phonenumber.value;
        }
        else if (counter === 3)
        {
            firstname3.value = firstname.value;
            lastname3.value = lastname.value;
            phonenumber3.value = phonenumber.value;
        }
        else if (counter === 4)
        {
            firstname4.value = firstname.value;
            lastname4.value = lastname.value;
            phonenumber4.value = phonenumber.value;
        }
        else if (counter === 5)
        {
            firstname5.value = firstname.value;
            lastname5.value = lastname.value;
            phonenumber5.value = phonenumber.value;
        }
        else if (counter === 6)
        {
            firstname6.value = firstname.value;
            lastname6.value = lastname.value;
            phonenumber6.value = phonenumber.value;
        }
        counter++;
        document.getElementById('MainContent_hdnfield').value = counter;
        
    }
}

function setCounter(count) {
    counter = count;
}

function getCounter() {
    return counter;
}

