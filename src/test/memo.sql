create table memo
(
    id       bigint       not null auto_increment,
    contents varchar(500) not null,
    username varchar(255) not null,
    primary key (id)
);