select * from aluguel_espaco;

create index idx_data_Inicio_idx_data_horaTermino on aluguel_espaco(data_horaInicio,data_horaTermino desc);

show index from aluguel_espaco;