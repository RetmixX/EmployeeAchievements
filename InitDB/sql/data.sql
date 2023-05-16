insert into status(title) values ('Работает');
insert into status(title) values ('В отпуске');
insert into status(title) values ('В декрете');
insert into status(title) values ('На больничном');
insert into status(title) values ('Уволен');
insert into status(title) values ('В командировке');
insert into status(title) values ('Обучение');
insert into status(title) values ('Повышение квалификакции');
insert into status(title) values ('Стажировка');
insert into status(title) values ('Испытательный срок');
insert into divisions(title) values ('EХ378 154');
insert into divisions(title) values ('ОУ549 51');
insert into divisions(title) values ('007T606 73');
insert into divisions(title) values ('У940AB 95');
insert into divisions(title) values ('004D744 09');
insert into divisions(title) values ('Х343AТ 51');
insert into divisions(title) values ('Р198EО 43');
insert into divisions(title) values ('B246ХО 97');
insert into divisions(title) values ('KН204 15');
insert into divisions(title) values ('У651EН 24');
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Назар', 'Кузьминична', 'Михайлов',
                                                                         1, 1);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Август', 'Захаровна', 'Фролов', 2, 2);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Мирослав', 'Филипповна', 'Колобов',
                                                                         3, 3);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Макар', 'Жоресович', 'Родионова', 4,
                                                                         4);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Арсений', 'Захарьевич', 'Носова', 5,
                                                                         5);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Глафира', 'Герасимович', 'Якушева',
                                                                         6, 6);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Селиверст', 'Федотович', 'Буров', 7,
                                                                         7);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Лев', 'Ефимович', 'Мухин', 8, 8);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Фортунат', 'Михайловна', 'Пестов', 9,
                                                                         9);
insert into employees(name, surname, patronymic, division_id, status_id) VALUES ('Никифор', 'Юльевич', 'Ширяев', 10,
                                                                         10);
insert into specialties(title) values ('Машинист локомотива');
insert into specialties(title) values ('Редактор');
insert into specialties(title) values ('Специалист по клеточным технологиям');
insert into specialties(title) values ('Крановщик');
insert into specialties(title) values ('Татуировщик');
insert into specialties(title) values ('Клинер');
insert into specialties(title) values ('Актуарий');
insert into specialties(title) values ('Заряжающий');
insert into specialties(title) values ('Мастер маникюра');
insert into specialties(title) values ('Проходчик');
insert into specialties_employees(employee_id, specialty_id) VALUES (1, 1);
insert into specialties_employees(employee_id, specialty_id) VALUES (2, 2);
insert into specialties_employees(employee_id, specialty_id) VALUES (3, 3);
insert into specialties_employees(employee_id, specialty_id) VALUES (4, 4);
insert into specialties_employees(employee_id, specialty_id) VALUES (5, 5);
insert into specialties_employees(employee_id, specialty_id) VALUES (6, 6);
insert into specialties_employees(employee_id, specialty_id) VALUES (7, 7);
insert into specialties_employees(employee_id, specialty_id) VALUES (8, 8);
insert into specialties_employees(employee_id, specialty_id) VALUES (9, 9);
insert into specialties_employees(employee_id, specialty_id) VALUES (10, 10);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('научить', 'Гулять
ставить услать налево идея радость мрачно пространство. Необычный порядок ремень пропаганда налево
выражаться мелькнуть лиловый.', '1983-07-27', 1, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('вариант', 'Лиловый
назначить выраженный. Совет хотеть вскакивать поезд.', '1974-03-27', 2, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('ход', 'Пасть славный
набор.', '1991-05-22', 3, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('сверкать', 'Природа
проход настать ставить. Пространство порт мелочь.', '2008-08-14', 4, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('трубка', 'Голубчик
школьный магазин ложиться песенка. Набор покидать ломать бровь некоторый солнце ремень.', '2007-05-
18', 5, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('головной', 'Дальний
неожиданный песня забирать.', '2022-10-03', 6, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('ботинок', 'Головной
вообще магазин.', '1971-11-18', 7, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('головной', 'Райком
слать цель ставить затянуться сходить что.', '2009-12-17', 8, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('печатать',
                                                                                          'Интеллектуальный строительство выдержать решение применяться.', '2002-09-20', 9, true);
insert into achievements_employee(title, description, date, employee_id, confirmed) VALUES ('запретить',
                                                                                          'Поставить дурацкий отъезд команда тута через.', '2011-09-06', 10, true);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_1.pdf', 1);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_2.pdf', 2);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_3.pdf', 3);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_4.pdf', 4);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_5.pdf', 5);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_6.pdf', 6);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_7.pdf', 7);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_8.pdf', 8);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_9.pdf', 9);
insert into documents_achievements_employee(path, achievement_id) VALUES ('doc_10.pdf', 10);
insert into projects(title, description) VALUES ('мелочь', 'Бровь радость настать. За место очко рис.');
insert into projects(title, description) VALUES ('танцевать', 'Блин ученый страсть рассуждение выдержать сынок
сохранять. Правильный терапия миф магазин.');
insert into projects(title, description) VALUES ('команда', 'Разнообразный забирать решетка передо славный
что. Выражение пол рай господь свежий.');
insert into projects(title, description) VALUES ('ленинград', 'Рот набор означать провинция выдержать
выдержать применяться. Пропаганда табак бабочка подробность.');
insert into projects(title, description) VALUES ('падаль', 'Возбуждение хотеть товар умирать возможно юный
штаб.');
insert into projects(title, description) VALUES ('вряд', 'Наслаждение невыносимый второй вариант потом
свежий. Растеряться миф конструкция сохранять решение сравнение господь.');
insert into projects(title, description) VALUES ('умирать', 'Поколение июнь какой предоставить зачем.
Конференция услать дорогой применяться.');
insert into projects(title, description) VALUES ('художественный', 'Подробность коллектив отражение рис
темнеть растеряться решетка.');
insert into projects(title, description) VALUES ('ложиться', 'При поймать издали наткнуться.');
insert into projects(title, description) VALUES ('торопливый', 'Вперед спичка выраженный конференция
порядок голубчик. Запеть академик висеть вскакивать миллиард тяжелый.');
insert into employees_projects(employee_id, project_id) VALUES (1, 1);
insert into employees_projects(employee_id, project_id) VALUES (2, 2);
insert into employees_projects(employee_id, project_id) VALUES (3, 3);
insert into employees_projects(employee_id, project_id) VALUES (4, 4);
insert into employees_projects(employee_id, project_id) VALUES (5, 5);
insert into employees_projects(employee_id, project_id) VALUES (6, 6);
insert into employees_projects(employee_id, project_id) VALUES (7, 7);
insert into employees_projects(employee_id, project_id) VALUES (8, 8);
insert into employees_projects(employee_id, project_id) VALUES (9, 9);
insert into employees_projects(employee_id, project_id) VALUES (10, 10);
insert into achievements_project(title, description, date, project_id) VALUES ('бабочка', 'Обида а отдел освободить
слишком спешить.', '1991-06-16', 1);
insert into achievements_project(title, description, date, project_id) VALUES ('набор', 'Заявление костер штаб
светило вряд.', '1994-12-19', 2);
insert into achievements_project(title, description, date, project_id) VALUES ('а', 'Что инструкция ботинок сынок.',
                                                                             '2016-10-31', 3);
insert into achievements_project(title, description, date, project_id) VALUES ('затянуться', 'Металл посидеть
развернуться кожа. Недостаток угроза рот.', '2017-09-15', 4);
insert into achievements_project(title, description, date, project_id) VALUES ('спичка', 'Написать приятель
достоинство исполнять сутки каюта бегать угодный. Лететь число призыв белье более.', '1984-03-10', 5);
insert into achievements_project(title, description, date, project_id) VALUES ('указанный', 'Шлем покинуть
миллиард мягкий выкинуть набор порядок успокоиться. Место расстройство покидать проход умолять.',
                                                                             '2016-05-25', 6);
insert into achievements_project(title, description, date, project_id) VALUES ('заведение', 'Пространство карандаш
полоска спешить собеседник. Успокоиться кузнец потрясти трясти поезд.', '1984-06-22', 7);
insert into achievements_project(title, description, date, project_id) VALUES ('район', 'Пространство манера
выдержать карман протягивать возникновение чувство.', '1985-07-26', 8);
insert into achievements_project(title, description, date, project_id) VALUES ('легко', 'Построить нож применяться
четко.', '2002-07-22', 9);
insert into achievements_project(title, description, date, project_id) VALUES ('функция', 'Бровь развитый
роскошный кидать избегать развитый вариант теория. Появление направо хотеть заложить опасность
освобождение сверкающий.', '1983-01-31', 10);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_1.pdf', 1);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_2.pdf', 2);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_3.pdf', 3);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_4.pdf', 4);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_5.pdf', 5);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_6.pdf', 6);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_7.pdf', 7);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_8.pdf', 8);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_9.pdf', 9);
insert into documents_achievements_project(path, achievement_id) VALUES ('doc_10.pdf', 10);
