var database = require("../database/config")

function piloto_one(piloto) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ")
    var instrucao = `
    select p.nome, p.idade, p.nacionalidade, v.modelo, v.marca, m.nome as 'Nome Motor' from piloto p join veiculo v 
	on fkVeiculo = idVeiculo 
    join motor m on fkMotor = idMotor where idPiloto = ${piloto}
		order by idPiloto;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function piloto_two(piloto) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
    select p.nome, p.idade, p.nacionalidade, v.modelo, v.marca, m.nome as 'Nome Motor' from piloto p join veiculo v 
	on fkVeiculo = idVeiculo 
    join motor m on fkMotor = idMotor where idPiloto = ${piloto}
		order by idPiloto;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    piloto_one,
    piloto_two
};