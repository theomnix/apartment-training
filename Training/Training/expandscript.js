var counter = 2;
var limit = 6;
function addInput(divName) {
    if (counter == limit) {
        alert("You can only submit up to 5 inquiries!");
    }
    else {
        var newdiv = document.createElement('div');
        newdiv.innerHTML = "Inquiry " + counter + "<br>First name: <input type='text' id='firstname" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv);
        var newdiv2 = document.createElement('div');
        newdiv2.innerHTML = "Last name: <input type='text' id='lastname" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv2);
        var newdiv3 = document.createElement('div');
        newdiv3.innerHTML = "Phone#: <input type='text' id='phonenumber" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv3);
        var newdiv4 = document.createElement('div');
        newdiv4.innerHTML = "Number of baths: <input type='text' id='numofbaths" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv4);
        var newdiv5 = document.createElement('div');
        newdiv5.innerHTML = "Number of bedrooms: <input type='text' id='numofbeds" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv5);
        var newdiv6 = document.createElement('div');
        newdiv6.innerHTML = "Square footage: <input type='text' id='sqrfootage" + counter + "'><br><br>";
        document.getElementById(divName).appendChild(newdiv6);
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

function getCounter() {
    return counter;
}

