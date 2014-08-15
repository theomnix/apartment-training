var counter = 2;
var limit = 6;
function addInput(divName) {
    if (counter == limit) {
        alert("You can only submit up to 5 inquiries!");
    }
    else {
        var newdiv = document.createElement('div');
        newdiv.innerHTML = "Inquiry " + counter + "<br>First name: <input type='text' name='firstname" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv);
        var newdiv2 = document.createElement('div');
        newdiv2.innerHTML = "Last name: <input type='text' name='lastname" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv2);
        var newdiv3 = document.createElement('div');
        newdiv3.innerHTML = "Phone#: <input type='text' name='phonenumber" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv3);
        var newdiv4 = document.createElement('div');
        newdiv4.innerHTML = "Number of baths: <input type='text' name='numofbaths" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv4);
        var newdiv5 = document.createElement('div');
        newdiv5.innerHTML = "Number of bedrooms: <input type='text' name='numofbeds" + counter + "'>";
        document.getElementById(divName).appendChild(newdiv5);
        var newdiv6 = document.createElement('div');
        newdiv6.innerHTML = "Square footage: <input type='text' name='sqrfootage" + counter + "'><br><br>";
        document.getElementById(divName).appendChild(newdiv6);
        counter++;
        
        /* Here I will add code to add each bit of
        */
        document.getElementById('MainContent_hdnfield').value = counter;
    }
}