create table worker_project(
    workerId int, foreign key(workerId) references worker(id) on update cascade on delete cascade,
    projectId int, foreign key(projectId) references project(id) on update cascade on delete cascade,
    primary key (workerId, projectId)
);