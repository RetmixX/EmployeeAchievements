create table if not exists status
(
    id    int primary key generated always as identity,
    title varchar(100) not null
);
create table if not exists divisions
(
    id    int primary key generated always as identity,
    title varchar(100) not null
);
create table if not exists employees
(
    id         int primary key generated always as identity,
    name      varchar(100) not null,
    surname      varchar(100) not null,
    patronymic      varchar(100),
    division_id int       not null,
    status_id   int       not null
);
create table if not exists specialties
(
    id    int primary key generated always as identity,
    title varchar(100) not null
);
create table if not exists specialties_employees
(
    id          int primary key generated always as identity,
    employee_id  int not null,
    specialty_id int not null
);
create table if not exists achievements_employee
(
    id          int primary key generated always as identity,
    title       varchar(100) not null,
    description text,
    date        date         not null,
    employee_id  int       not null,
    confirmed   bool         not null
);
create table if not exists documents_achievements_employee
(
    id            int primary key generated always as identity,
    path          varchar(200) not null,
    achievement_id int
);
create table if not exists employees_projects
(
    id         int primary key generated always as identity,
    employee_id int not null,
    project_id  int not null
);
create table if not exists projects
(
    id          int primary key generated always as identity,
    title       varchar(100) not null,
    description text
);
create table if not exists achievements_project
(
    id          int primary key generated always as identity,
    title       varchar(100) not null,
    description text,
    date        date         not null,
    project_id   int       not null
);
create table if not exists documents_achievements_project
(
    id            int primary key generated always as identity,
    path          varchar(200) not null,
    achievement_id int       not null
);
alter table  employees
    add constraint fk_employees_status foreign key (status_id) references status (id),
add constraint fk_employees_divisions foreign key (division_id) references divisions(id);
alter table specialties_employees
    add constraint fk_specialtiesEmployees_specialties foreign key (specialty_id) references specialties (id),
add constraint fk_specialtiesEmployees_employees foreign key (employee_id) references employees(id);

alter table achievements_employee
    add constraint fk_achievementsEmployee_employees foreign key (employee_id) references employees (id);
alter table documents_achievements_employee
    add constraint fk_documentsAchievementsEmployee_achievementsEmployee foreign key (achievement_id)
        references achievements_employee (id);
alter table employees_projects
    add constraint fk_employeesProjects_employees foreign key (employee_id) references employees (id),
add constraint fk_employeesProjects_project foreign key (project_id) references projects(id);

alter table achievements_project
    add constraint fk_achievementsProject_projects foreign key (project_id) references projects (id);

alter table documents_achievements_project
    add constraint fk_documentsAchievementsProject_achievementsProject foreign key (achievement_id) references
        achievements_project (id);
