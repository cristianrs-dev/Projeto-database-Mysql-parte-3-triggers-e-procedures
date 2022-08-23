/***************************************************************************
***************VERIFICAR A DISPONIBILIDADE DE ESPACO PARA EVENTO************/
delimiter //
create procedure consultar_disponibilidade_espaco(espaco varchar(100),
 data date)
 begin
	declare encontrado date;
    declare lugar varchar(100);
	select descricao, date(data_horaInicio) 
    into lugar,encontrado
	from aluguel_espaco
	where date(data_horaInicio) =data and descricao=espaco;
    
    if (encontrado is not null) and (lugar is not null) then
		select "espaco reservado";
    else
		select "espaco disponivel";
	end if;
 end//
 

set @espaco='salao de festas';
set @data='2020-04-25';
 call consultar_disponibilidade_espaco(@espaco,@data);
