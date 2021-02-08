const {Router} = require('express');

const PostagensController = require('./controllers/PostagensController');

const routes = new Router;

routes.get("/", PostagensController.homeAction)
routes.get("/postagens", PostagensController.indexAction)
routes.post("/postagens", PostagensController.registrarPostagemAction)

module.exports = routes;