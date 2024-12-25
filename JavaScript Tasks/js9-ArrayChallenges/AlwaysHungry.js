function AlwaysHungryarr(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] == 'food') {
            console.log('yummy yummy');
        }
        else {
            console.log('Im hungry');
        }
    }
}
AlwaysHungryarr(['food', 2, 3, 'food', 5]);