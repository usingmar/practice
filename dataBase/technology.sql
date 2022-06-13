create table technology(
    id serial primary key,
    technoogyName character varying(100),
    codeLanguage text default NULL,
    technologyVersion character varying(50) default '1.0',
    projectId int, foreign key(projectId) references project(id) on update cascade on delete cascade
);