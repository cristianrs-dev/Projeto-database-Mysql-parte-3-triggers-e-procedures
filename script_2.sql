/*************************************************************************************
*************VIEW PARA CONSULTAR ESPACOS RESERVADOS DO CONDOMINIO*********************/
create view consultar_dispEspaco_aluguel as select descricao as espaco, 
			date(data_horaInicio) data, time(data_horaInicio) as inicio,
            time(data_horaTermino) as termino
from aluguel_espaco;

select * from consultar_dispEspaco_aluguel;

/**********************************************************************************************
*********************VIEW PARA CONSULTAR MORADOR pelo numero do apartamento********************/

create view consApto_morador as select m.nome as morador, a.numero as numero_apartamento, a.andar
from morador as m inner join apartamento as a
on m.idApartamento=a.id; 

select * from consApto_morador where numero_apartamento=102;


/***********************************************************************************
********************CONSULTAR APARTAMENTO ONDE SECRETARIA TRABALHA******************/
 create view consSecretariaApto as select m.nome as morador, a.numero 
 as numero_apartamento, a.andar, s.nome as secretaria
from morador as m inner join apartamento as a inner join secretaria as s
on m.idApartamento=a.id and m.idSecretaria=s.id; 

select * from consSecretariaApto where numero_apartamento=105;

/***********************************************************************************
*********************CONSULTAR DOCUMENTO PELA DATA DE ENTRADA**********************/

create view consultarEntradaDoc as select tipo, data_entrada from documento;

select * from consultarEntradaDoc;

/***********************************************************************************
*********************CONSULTAR DOCUMENTO PELA DATA DE EMISSAO**********************/

create view consultarEmissaoDoc as select tipo, data_emissao from documento;

select * from consultarEmissaoDoc where data_emissao='2020-05-03';