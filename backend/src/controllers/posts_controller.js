const data = require("../data");
const routes = require("../routes");

const getPosts = (req, res) => {
  const posts = data.getPosts();
  res.json(posts);
};

const getPostById = (req, res) => {
  const postId = req.params.id;
  const post = data.getPostById(postId);
  if (post) {
    res.json(post);
  } else {
    res.status(404).send("Post not found");
  }
};

const createPost = (req, res) => {
  const newPost = req.body;
  const createdPost = data.createPost(newPost);
  res.status(201).json(createdPost);
};

const updatePost = (req, res) => {
  const postId = req.params.id;
  const updatedPost = req.body;
  const result = data.updatePost(postId, updatedPost);
  if (result) {
    res.json(result);
  } else {
    res.status(404).send("Post not found");
  }
};

const deletePost = (req, res) => {
  const postId = req.params.id;
  const result = data.deletePost(postId);
  if (result) {
    res.status(204).send();
  } else {
    res.status(404).send("Post not found");
  }
};

module.exports = {
  getPosts,
  getPostById,
  createPost,
  updatePost,
  deletePost,
};
