create table worker( 
    id serial primary key,
    workerName character varying(255) not null,
    workerSurname character varying(255) not null,
    dateOfMembership date not null,
	salary money,
    lvlId int, constraint workerLvlFk foreign key(lvlId) references lvl(id),
     departmentId int, constraint departmentFk foreign key(departmentId) references department(id) on update cascade on delete cascade
);