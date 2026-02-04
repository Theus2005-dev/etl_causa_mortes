create table ods_death_causes(
  id serial primary key,
  ano int not null,
  regiao varchar not null,
  genero varchar not null,
  faixa_etaria varchar not null,
  causa_morte varchar not null,
  num_mortes int not null,
  Mortality_Rate_per_1000 float not null
);

create table dim_causa(
  id serial primary key,
  descricao varchar not null
);

create table dim_regiao(
  id serial primary key,
  descricao varchar not null
);
create table dim_genero(
  id serial primary key,
  descricao varchar not null
);
create table dim_grupo_idade(
  id serial primary key,
  descricao varchar not null
);

create table fato_mortes(
  id serial primary key,
  ano int not null,
  id_regiao int not null,
  id_genero int not null,
  id_grupo_idade int not null,
  id_causa int not null,
  numero_mortos int not null,
  Mortality_Rate_per_1000 float not null,

  constraint fk_regiao foreign key (id_regiao) references dim_regiao(id),
  constraint fk_genero foreign key (id_genero) references dim_genero(id),
  constraint fk_grupo_idade foreign key (id_grupo_idade) references dim_grupo_idade(id),
  constraint fk_causa foreign key (id_causa) references dim_causa(id)
);