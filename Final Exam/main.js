function Message() {
    var element = document.getElementById("search-input").value;
    alert(element);
}

function delet(element) {
    var photo = document.querySelector('element');
    element.remove();
}



function incrementLikes() {
    var result = document.querySelector('.result');
    var numOfLikes = result.innerText;
    numOfLikes++;
    result.innerText = numOfLikes;
}


