create table project_technology(
    projectId int, foreign key(projectId) references project(id) on update cascade on delete cascade,
    technologyId int, foreign key(technologyId) references technology(id) on update cascade on delete cascade,
    primary key (projectId, technologyId)
);