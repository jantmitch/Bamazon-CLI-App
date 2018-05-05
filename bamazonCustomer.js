var inquirer = require("inquirer");
var mysql = require("mysql");
var itemPurchased = 0;

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazon_DB"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Connected")
    productList();

});

function productList() {
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log("Item number: " + res[i].id);
            console.log("Product name: " + res[i].product_name);
            console.log("Price: " + res[i].price);
            console.log("-----------------------------------");
        }
        purchase();
    });

}

function purchase() {
    inquirer.prompt([
        {
            type: "input",
            name: "purchase",
            message: "What item would you like to purchase(use the id number)?",
        },
        {
            type: "input",
            name: "units",
            message: "How many would you like to purchase?"
        }

    ]).then(function (answers) {

        console.log(answers);
    })
}
