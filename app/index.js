const express = require("express");
const app = express();
const dotenv = require("dotenv");

dotenv.config();

app.get("/", (req, res) => {
  console.log("Hello World");
  res.send("Hello World");
});

const PORT = process.env.PORT || 5001;

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
