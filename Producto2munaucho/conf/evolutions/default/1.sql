# --- First database schema

# --- !Ups

create table trabajador (
  id                        bigint not null,
  nombre                      varchar(255),
  apellido		           varchar(255),
  direccion                     varchar(255),
  correo                   varchar(255),
  constraint pk_trabajador primary key (id))
;

create sequence trabajador_seq start with 1000;



# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists trabajador;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists trabajador_seq;

