import express from "express";
import router from "./src/routes.js";
const app = express();
const port = 3000;
import cors from "cors";

app.use(express.json());
app.use(cors());
app.use("/api", router);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
