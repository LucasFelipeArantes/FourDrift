var comparativoModel = require("../models/comparativoModel");

var sessoes = [];

function piloto_one(req, res){
    console.log(req.params.piloto);
    var piloto = req.params.piloto;


    if (piloto == undefined) {
        res.status(400).send("Seu piloto está undefined!");
    } else {
        
        comparativoModel.piloto_one(piloto)
            .then(
                function (resultado) {
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if (resultado.length == 1) {
                        console.log(resultado);
                        res.json(resultado[0]);
                    } else if (resultado.length == 0) {
                        res.status(403).send("piloto indefinido");
                    } else {
                        res.status(403).send("piloto já selecionado");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar a comparação! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}

function piloto_two(piloto){
    var piloto = req.body.pilotoServer;


    if (piloto == undefined) {
        res.status(400).send("Seu piloto está undefined!");
    } else {
        
        comparativoModel.piloto_two(piloto)
            .then(
                function (resultado) {
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if (resultado.length == 1) {
                        console.log(resultado);
                        res.json(resultado[0]);
                    } else if (resultado.length == 0) {
                        res.status(403).send("piloto indefinido");
                    } else {
                        res.status(403).send("piloto já selecionado");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar a comparação! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}

module.exports = {
    piloto_one,
    piloto_two
}