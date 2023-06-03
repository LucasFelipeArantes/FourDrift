var express = require("express");
var router = express.Router();

var comparativoController = require("../controllers/comparativoController");


router.get("/piloto_one/:piloto", function (req, res) {
    comparativoController.piloto_one(req, res);
})

router.get("/piloto_two/:piloto", function (req, res) {
    comparativoController.piloto_two(req, res);
});

module.exports = router;