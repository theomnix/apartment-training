function removeInput(){
    var count = getCounter();

    if (count === 3) {
        document.getElementById('test2').parentNode.removeChild(document.getElementById('test2'));
        count--;
    }
    else if (count === 4){
        document.getElementById('test3').parentNode.removeChild(document.getElementById('test3'));
        count--;
    }
    else if (count === 5) {
        document.getElementById('test4').parentNode.removeChild(document.getElementById('test4'));
        count--;
    }
    else if (count === 6) {
        document.getElementById('test5').parentNode.removeChild(document.getElementById('test5'));
        count--;
    }
    setCounter(count);
}