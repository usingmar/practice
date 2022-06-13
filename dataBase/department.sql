create table department( 
    id serial primary key,
    departmentName character varying(255) not null,
    departmentLocation character varying(255) not null,
    companyId int, constraint companyFk foreign key(companyId) references company(id) on update cascade on delete cascade
);