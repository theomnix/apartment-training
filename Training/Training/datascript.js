var count;

function validate() {
    var valid = false;
    var count = getCounter();
    var results = [30];
    var j = 0;
    for(var i = 0; i < count; i++)
    {
        if (i === 0)
        {
            results[j] = validateEmpty(document.getElementById('firstname'));
            j++;
            results[j] = validateEmpty(document.getElementById('lastname'));
            j++;
            results[j] = validateEmpty(document.getElementById('phonenumber'));
            j++;
            results[j] = validateEmpty(document.getElementById('numofbaths'));
            j++;
            results[j] = validateEmpty(document.getElementById('numofbeds'));
            j++;
            results[j] = validateEmpty(document.getElementById('sqrfootage'));
            j++;
            i++;
        }
        else
        {
            results[j] = validateEmpty(document.getElementById('firstname' + i + ''));
            j++;
            results[j] = validateEmpty(document.getElementById('lastname' + i + ''));
            j++;
            results[j] = validateEmpty(document.getElementById('phonenumber' + i + ''));
            j++;
            results[j] = validateEmpty(document.getElementById('numofbaths' + i + ''));
            j++;
            results[j] = validateEmpty(document.getElementById('numofbeds' + i + ''));
            j++;
            results[j] = validateEmpty(document.getElementById('sqrfootage' + i + ''));
            j++;
        }
    }

    for (var k = 0; k < results.length; k++)
    {
        if (results[k] === "ERROR") {
            valid = false;
            break;
        }
        else
            valid = true;
    }

    return valid;

}

function validateEmpty(fld) {
    var error = "";

    if (fld.value.length == 0) {
        fld.style.background = 'Orange';
        error = "ERROR"
    } else {
        fld.style.background = 'White';
    }
    return error;
}
