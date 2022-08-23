/***********************************************************************************************
************************FUNCTION PARA VERIFICAR O MORADOR RELACIONADO A SECRETARIA*************/
delimiter //
create function cons_moradorSecretaria(
pessoa varchar(100)
) returns varchar (100) deterministic
begin
	declare encontrado varchar(100);
    declare morador varchar(100);
	select m.nome into encontrado 
    from morador as m, apartamento as a, secretaria as s
	where m.idSecretaria=s.id and s.nome=pessoa
	group by m.id ;
    
    if encontrado is null then
		return "nao consta no registro";
	else
		return encontrado;
	end if;
end//

select cons_moradorSecretaria('dulcicleide rosa pinho');