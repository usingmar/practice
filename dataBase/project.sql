create table project(
    id serial primary key,
    scheme text default NULL,
    stage text default 'stage 0 - Started'
);