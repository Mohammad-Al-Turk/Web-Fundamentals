function highPass(arr, cutoff) {
    var filteredArr = [];
    
        for (var i = 0; i < arr.length; i++) {
            if (arr[i] > cutoff) {
                filteredArr.push(arr[i]);
            }
        }
    return filteredArr;
}
var result = highPass([6, 8, 3, 10, -2, 5, 9], 7);
console.log(result);