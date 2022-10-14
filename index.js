let express = require("express");
let app = new express();
app.set("view engine", "ejs")
// setup database connection
const knex = require("knex")({
  client: "mysql",
  connection: {
    host: "simpsonsdb.cluster-c0vzrsn9y1ny.us-east-2.rds.amazonaws.com",
    user: "admin",
    password: "password1",
    database: "simpsons",
    port: 3306,
  },
});



app.get("/", (req, res) => {
  knex
    .select()
    .from("Stickers")
    .then((result) => {
      console.log(result);
      res.render("index", {result});
    });
});



app.listen(3000);
