
/*************************************************************************************
**********************************ROLES***********************************************/
create role 'administracao', 'sindico','conselhoADM','condomino';
grant select,insert, update, delete on village_bd.* to 'administracao';
grant select, update,insert,delete on village_bd.* to 'sindico';
grant select on village_bd.documento to 'conselhoADM';
grant select on village_bd.aluguel_espaco to 'condomino';
FLUSH PRIVILEGES;

/*******************************************************************************************/
/*********************************USUARIOS**************************************************/
create user 'userAdministrador'@'localhost' identified by '123';
create user 'userSindico'@'localhost' identified by '456';
create user 'userConselho_ADM'@'localhost' identified by'789';
create user 'userMorador'@'localhost' identified by '101112';
/*******************************************************************************************/
/*********************************PRIVILEGIOS**************************************************/
grant 'administracao' to 'userAdministrador'@'localhost';
flush privileges;
grant 'sindico' to 'userSindico'@'localhost';
flush privileges;
grant 'conselhoADM' TO 'userConselho_ADM'@'localhost';
flush privileges;
grant 'condomino' to 'userMorador'@'localhost';

/**********************************************************************************************/
/************************************SET USUARIOS**********************************************/
set default role 'administracao' to 'userAdministrador'@'localhost';
set default role 'sindico' to 'userSindico'@'localhost';
set default role 'conselhoADM' to 'userConselho_ADM'@'localhost';
set default role 'condomino' to 'userMorador'@'localhost';
