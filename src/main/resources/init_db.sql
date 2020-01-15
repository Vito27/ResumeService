create table resume
(
    uuid      varchar(36) not null
        primary key,
    full_name blob(10000) not null
);

create table contact
(
    id          int auto_increment
        primary key,
    type        blob(10000)        not null,
    value       blob(10000)       not null,
    resume_uuid varchar(36) not null,
    constraint contact_resume_uuid_fk
        foreign key (resume_uuid) references resume (uuid)
            on delete cascade
);

create unique index contact_uuid_type_index
    on contact (resume_uuid, type);

create table section (
                         id          serial primary key,
                         resume_uuid varchar(36) not null,
                         type        blob(10000)    not null,
                         content     blob(10000)     not null,
                         foreign key (resume_uuid) references resume(uuid) on delete cascade
);

create unique index section_idx
    on section (resume_uuid, type);