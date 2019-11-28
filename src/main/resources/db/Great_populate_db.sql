DELETE FROM request;
DELETE FROM estimate;
DELETE FROM offer;
DELETE FROM category;
DELETE FROM user_roles;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password,city,photo) VALUES
('UserB', 'u', 'p','Moscow','default.png'),
('UserS', 'userS@yandex.ru', 'passwordS','Moscow','userS.jpg'),
('Admin', 'admin@gmail.com', 'admin','Moscow','default.png'),
('Райская выпечка','HBakery@mail.ru', 'password', 'Moscow', 'пекарня.jpeg'),
('Цветущие цветы','BFlowers@mail.ru', 'password', 'Moscow', 'Цветущие цветы.jpg'),
('Поставщик проводов','TheWires@mail.ru', 'password', 'Moscow', 'Кабельщик.jpg'),
('Секонд Хэнд','VeslaC@mail.ru', 'password', 'Moscow', 'Секонд хэнд.jpg');


INSERT INTO user_roles (role, user_id) VALUES
('ROLE_USER', 100000),
('ROLE_USER', 100001),
('ROLE_ADMIN', 100002),
('ROLE_USER', 100003),
('ROLE_USER', 100004),
('ROLE_USER', 100005),
('ROLE_USER', 100006);

INSERT INTO category (name,unit,type) VALUES
('Еда','Кг','Ящик'),
('Одежда','Шт','Упаковка'),
('Цветы','Шт','Ящик'),
('Провода','М','Упаковка'),
('Другое','Шт','Ящик');
--
INSERT INTO offer(cost,amount,description,buy_offer,category_id,date_time,offerer_id) VALUES
(200,50,'Хлеб',false,100007,'2014-06-25 10:00:00',100003),
(500,75,'Торт',false,100007,'2015-08-12 10:00:00',100003),
(150,200,'Пирожное',false,100007,'2018-04-21 10:00:00',100003),
(350,100,'Яблочный пирог',false,100007,'2015-05-31 10:00:00',100003),
(380,100,'Вишневый пирог',false,100007,'2017-05-31 10:00:00',100003),
(150,200,'Круассан',false,100007,'2015-02-02 10:00:00',100003),

(60,300,'Розы',false,100009,'2019-01-15 10:00:00',100004),
(80,300,'Фиалки',false,100009,'2018-04-20 10:00:00',100004),
(90,300,'Орхидеи',false,100009,'2019-05-19 10:00:00',100004),
(85,300,'Лилии',false,100009,'2017-06-16 10:00:00',100004),

(150,1000,'Интернет кабель',false,100010,'2017-05-31 10:00:00',100005),
(100,1000,'Телефонный кабель',false,100010,'2016-10-15 10:00:00',100005),
(100,1000,'Электрический провод',false,100010,'2017-02-12 11:00:00',100005),
(100,1000,'USB провод',false,100010,'2019-03-22 10:00:00',100005),

(9000,30,'Куртка осень',false,100008,'2016-06-18 10:00:00',100006),
(7500,70,'Шапка осень',false,100008,'2016-09-28 10:00:00',100006),
(12000,30,'Куртка зима',false,100008,'2017-01-20 10:00:00',100006),
(9000,30,'Штаны осень',false,100008,'2018-04-07 10:00:00',100006);

INSERT INTO request(offer_id,requester_id,message,responced) VALUES
(100012,100000,'Нужно хлеба в школу детям',false),
(100013,100000,'Нужно тортиков в школу учителям', false),
(100015,100001,'Яблочные пироги на вечеринку!', false),

(100018,100000,'Нужно много Роз для моего нового фильма', false),
(100019,100001,'Нужно много Орхидей для моего нового фильма', false),
(100020,100001,'И фиалки фильму не помешают', false),


(100022,100000,'Новому оффису нужны ваши интернет кабеля', false),
(100023,100001,'Телефонных кабелей пожалуйста', false),
(100024,100000,'Нам не хватает электропроводки', false);



INSERT INTO estimate(estimated_id,estimator_id,comment,stars,date_time) VALUES
(100003,100000,'Обожаем их выпечку',5,'2016-05-31  10:00:00'),
(100003,100001,'Пироги даже вкуснее чем мама делает!!!!',5,'2017-02-20  10:00:00'),
(100003,100002,'Наша компания постоянно покупает отсюда выпечку и к сожалению она уже приелась',3,'2019-06-18  10:00:00'),
(100003,100005,'Всем отделом завтракаем их хлебушком',4,'2018-04-21  10:00:00');
