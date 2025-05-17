--Insertar Cuidades
INSERT INTO ciudades (ciu_desc) VALUES ('LIVERPOOL');
INSERT INTO ciudades (ciu_desc) VALUES ('BARCELONA');
INSERT INTO ciudades (ciu_cod, ciu_desc) VALUES (3, 'MADRID');
INSERT INTO ciudades (ciu_cod, ciu_desc) VALUES (4, 'MANCHESTER');
INSERT INTO ciudades (ciu_cod, ciu_desc) VALUES (5, 'TURIN');
INSERT INTO ciudades (ciu_cod, ciu_desc) VALUES (6, 'PARIS');


--Insertar Jugadores
INSERT INTO jugadores (jug_nombre,jug_apellido,ciu_cod,equi_cod) VALUES ('Ana','Fleitas',1,1);
INSERT INTO jugadores (jug_nombre,jug_apellido,ciu_cod,equi_cod) VALUES ('Earling','Haaland',4,3);
INSERT INTO jugadores (jug_nombre,jug_apellido,ciu_cod,equi_cod) VALUES ('Luvas','Vasquez',3,3);





--INSERTAR ANALISIS
INSERT INTO analisisjugador (ana_gol,ana_asistencias,ana_trjamarilla,ana_trjroja,ana_partidosjugados,jug_cod) VALUES (7,3,0,4,12,1);

--INSERTAR ENTRENADOR
INSERT INTO entrenadores (ent_cod,ent_nombre,ent_apellido) VALUES (1,'Arnet','Slot');
INSERT INTO entrenadores (ent_cod,ent_nombre,ent_apellido) VALUES (2,'Hansi','Flick');
INSERT INTO entrenadores (ent_cod,ent_nombre,ent_apellido) VALUES (3,'Carlo','Anceloti');
INSERT INTO entrenadores (ent_cod,ent_nombre,ent_apellido) VALUES (4,'Pep','Guardiola');
INSERT INTO entrenadores (ent_cod,ent_nombre,ent_apellido) VALUES (5,'Igor','Tudor');




);
--INSERTAR ESTADIOS
INSERT INTO estadio (est_nombre,est_capacidad,ciu_cod) VALUES ('Anfield',61276,1);
INSERT INTO estadio (est_nombre,est_capacidad,ciu_cod) VALUES ('Camp Nou',99354 ,2);
INSERT INTO estadio (est_nombre,est_capacidad,ciu_cod) VALUES ('Santiago Bernabeu',78297 ,3);
INSERT INTO estadio (est_nombre,est_capacidad,ciu_cod) VALUES ('Etihad Stadium',53400,4);
INSERT INTO estadio (est_nombre,est_capacidad,ciu_cod) VALUES ('Estadio Juventus',41507,5);




--INSERTAR EQUIPOS
INSERT INTO equipos (equi_nombre,ent_cod,est_cod) VALUES ('Liverpool',2,1);
INSERT INTO equipos (equi_nombre,ent_cod,est_cod) VALUES ('BARCELONA',1,2);
INSERT INTO equipos (equi_nombre,ent_cod,est_cod) VALUES ('REAL MADIRD',5,3);
INSERT INTO equipos (equi_nombre,ent_cod,est_cod) VALUES ('MANCHESTER CITY',3,4);
INSERT INTO equipos (equi_nombre,ent_cod,est_cod) VALUES ('Juventus',4,5);




--INSERTAR JUEGOS
INSERT INTO juegos (jue_local,jue_visitante,jue_duracion,jue_fecha,est_cod) VALUES (3,9,'01:45:00','2025-03-14',1);
INSERT INTO juegos (jue_local,jue_visitante,jue_duracion,jue_fecha,est_cod) VALUES (10,4,'01:45:00','2025-06-15',3);
INSERT INTO juegos (jue_local,jue_visitante,jue_duracion,jue_fecha,est_cod) VALUES (4,8,'01:45:00','2025-07-24',4);



--INSERTAR ARBITROS
INSERT INTO arbitros (arb_nombre,arb_apellido,jue_cod) VALUES ('Cristian','Romero',1);
SELECT FROM (*) entrenadores;

--insertar clientes

INSERT INTO clientes (cli_nombre,cli_apellido,cli_tel,ciu_cod) VALUES ('Brian','Paredes',098789,1);
INSERT INTO clientes (cli_nombre,cli_apellido,cli_tel,ciu_cod) VALUES ('Leandro','Gamarra',09823789,1);
INSERT INTO clientes (cli_nombre,cli_apellido,cli_tel,ciu_cod) VALUES ('Adan','Gonzales',09844789,1);

--INSERTAR AGENDA 
INSERT INTO agendaentradaS (jue_cod) VALUES (1);
INSERT INTO agendaentradaS (jue_cod) VALUES (4);
INSERT INTO agendaentradaS (jue_cod) VALUES (5);

--INSERTAR ENTRADAS 
INSERT INTO entradas(ent_estado, ent_fechareserva,ent_precio,cli_cod,age_cod) VALUES ('Confirmado','2025-03-14',350000,1,1);
INSERT INTO entradas(ent_estado, ent_fechareserva,ent_precio,cli_cod,age_cod) VALUES ('Confirmado','2025-06-15',357500,2,3);
INSERT INTO entradas(ent_estado, ent_fechareserva,ent_precio,cli_cod,age_cod) VALUES ('Confirmado','2025-07-24',556000,3,2);

--insertar recordatorio 
INSERT INTO recordatorios (ent_cod,rec_men,rec_fechaenvio) VALUES ( 1,'Hola Brian, tu entrada para el partido ya está confirmada. Te esperamos el sábado a las 18:00.',
    '2025-03-14');

INSERT INTO recordatorios (ent_cod,rec_men,rec_fechaenvio) VALUES ( 2,'Hola Leandro, tu entrada para el partido ya está confirmada. Te esperamos el sábado a las 20:00.',
    '2025-06-15');
	INSERT INTO recordatorios (ent_cod,rec_men,rec_fechaenvio) VALUES ( 3,'Hola Adan, tu entrada para el partido ya está confirmada. Te esperamos el sábado a las 22:00.',
    '2025-07-24');






 

