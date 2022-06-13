create table company_country(
    companyId int, foreign key(companyId) references company(id) on update cascade on delete cascade,
    countryId int, foreign key(countryId) references country(id) on update cascade on delete cascade,
    primary key (companyId, countryId)
);