const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.json({ message: "docker is easy" });
});
const port = 8080;
app.listen(port, () => {
  console.log(`app is listening at port ${port}`);
});
x