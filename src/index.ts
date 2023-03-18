import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("Hello world!");
});

app.get("/hello", (req, res) => {
  res.send("Hello world!");
});

app.listen(3000, () => {
  console.log("Server listen on port 3000");
});
