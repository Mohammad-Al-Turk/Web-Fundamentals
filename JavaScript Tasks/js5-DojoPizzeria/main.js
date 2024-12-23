function PizzaOven(bread, protein, cheese, toppings) {
    var Pizza = {};
    Pizza.bread = bread;
    Pizza.protein = protein;
    Pizza.cheese = cheese;
    Pizza.toppings = toppings;
    return Pizza;
}

var pizza1 = PizzaOven("deep dish", "traditional", ["mozzarella"], ["pepperoni", "sausage"]);
console.log(pizza1);

var pizza2 = PizzaOven("hand tossed", "marinara", ["mozzarella", "feta"], ["mushrooms", "olives", "onions"]);
console.log(pizza2);

var pizza3 = PizzaOven("thin crust", "pesto", ["goat cheese", "mozzarella"], ["artichokes", "sun-dried tomatoes", "basil"]);
console.log(pizza3);

var pizza4 = PizzaOven("stuffed crust", "alfredo", ["cheddar", "parmesan"], ["bacon", "spinach", "tomato"]);
console.log(pizza4);


// The code below is from the internet for learning.
function randomPizza() {
    var crustTypes = ["deep dish", "hand tossed", "thin crust", "stuffed crust"];
    var sauceTypes = ["traditional", "marinara", "pesto", "alfredo"];
    var cheeseOptions = [["mozzarella"], ["cheddar"], ["mozzarella", "feta"], ["goat cheese", "parmesan"]];
    var toppingOptions = [["pepperoni", "sausage"], ["mushrooms", "olives", "onions"], ["bacon", "spinach"], ["artichokes", "sun-dried tomatoes", "basil"]];

    var randomCrust = crustTypes[Math.floor(Math.random() * crustTypes.length)];
    var randomSauce = sauceTypes[Math.floor(Math.random() * sauceTypes.length)];
    var randomCheese = cheeseOptions[Math.floor(Math.random() * cheeseOptions.length)];
    var randomToppings = toppingOptions[Math.floor(Math.random() * toppingOptions.length)];

    return PizzaOven(randomCrust, randomSauce, randomCheese, randomToppings);
}
var pizza5 =  randomPizza();
console.log(pizza5);
