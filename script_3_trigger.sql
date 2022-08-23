delimiter //
create trigger status_apartamento after insert on ex_morador
for each row
begin
	update apartamento
    set status='vago'
    where id=new.id_morador;
end//