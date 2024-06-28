create role stg_rw;
grant insert on stage.* to stg_rw;
grant create table on stage.* to stg_rw;

create role stg_readonly;
grant select on stage.* to stg_readonly;

create user readonl1;
grant stg_readonly to readonl1;

create user readonl2;
grant stg_readonly to readonl2;


create user str_rw1;
grant stg_rw to str_rw1;

create user str_rw2;
grant stg_rw to str_rw2;
