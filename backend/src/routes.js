import express from "express";
import posts from "./data.js";

const router = express.Router();

// Get all posts
router.get("/posts", (req, res) => {
  res.json(posts);
});

// Get a single post by ID
router.get("/posts/:id", (req, res) => {
  res.send("A single post");
});

// Create a new post
router.post("/posts", (req, res) => {
  res.send("Create a new post");
});

// Update a post by ID
router.put("/posts/:id", (req, res) => {
  res.send("Update a post");
});

// Delete a post by ID
router.delete("/posts/:id", (req, res) => {
  res.send("Delete a post");
});

export default router;
