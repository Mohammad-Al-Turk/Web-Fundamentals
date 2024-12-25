function betterThanAverage(arr) {
    var sum = 0;
    var count = 0;
    var avg;
    for (var i = 0; i < arr.length; i++) {
        sum = sum + arr[i];
    }
    console.log("sum of element: " + sum);
    console.log("number of element: " + i);
    avg=sum/i;
    console.log("avg for element: " + avg);

    for (i = 0; i < arr.length; i++) {
        if (arr[i] > avg) {
            count++;

        }

    }
    return count;

}
var result = betterThanAverage([6, 8, 3, 10, -2, 5, 9]);
console.log("number of element grater than avg: " + result);