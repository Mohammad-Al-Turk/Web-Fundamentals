function incrementLikes(elementClass) {
    var result = document.querySelector(elementClass);
    var numOfLikes = result.innerText;
    numOfLikes++;
    result.innerText = numOfLikes;
}
