var mysql = require("mysql2");
var inquirer = require("inquirer");
var Table = require("easy-table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 8080,
    user: "root",
    password: "",
    database: "Bamazon"
});

connection.connect(function(err){
if (err) throw err;
 console.log ("connected as id" + connection.threadId);
    display();
});

// displays all of the items for sale
function display(){
    connection.query("select * from products", function (err, result){
        if (err) throw err;
        console.log(Table.print(result));
        prompt ();
})};

function prompt(){
    inquirer
    .prompt([
            {
            name: "whichId",
            type: "input",
            message: "Enter the ID number of the product you would like to buy"
            },
            {
            name:"quantity",
            type:"input",
            message: "How many would like to purchase?" 
            }
        ])
        .then(function(answer){
         connection.query(  
         "SELECT stock_quantity FROM products WHERE id =?", [answer.whichId], function (err, res) {
        if (err) throw err;
         const prodId = answer.whichId;
                 const newQuantity = (res[0].stock_quantity - answer.quantity)
                    update(newQuantity, prodId);
                });
            });

        function update (newQuantity, prodID){
         connection.query(
         "UPDATE products SET stock_quantity =? WHERE item_id = ?", function(err, res){
      if (err) throw err;
     [
        {
             stock_quantity: newQuantity
                 },
             {
            id: prodId
             }
     ],function(err,results){
       console.log(results)
                }
            }
            )};
        };
