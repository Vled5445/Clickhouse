-- Создаем роль stg_rw для чтения и вставки в stg слой

create role stg_rw;
-- Выдаем данной роли права на вставку

grant insert on stage.* to stg_rw;

-- Выдаем права на создание таблиц

grant create table on stage.* to stg_rw;

-- Создаем роль stg_readonly

create role stg_readonly;

-- Выдаем права на чтение

grant select on stage.* to stg_readonly;


create user readonl1;
grant stg_readonly to readonl1;

create user readonl2;
grant stg_readonly to readonl2;


create user str_rw1;
grant stg_rw to str_rw1;

create user str_rw2;
grant stg_rw to str_rw2;
