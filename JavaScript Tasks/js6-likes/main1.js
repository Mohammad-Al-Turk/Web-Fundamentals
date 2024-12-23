// var count = 0;
// function like() {
//     count++;
//     var res = document.querySelector('.result');
//     res.innerText = count;
// }


function incrementLikes() {
    var result = document.querySelector('.result');
    var numOfLikes = result.innerText;
    numOfLikes++;
    result.innerText = numOfLikes;
}
