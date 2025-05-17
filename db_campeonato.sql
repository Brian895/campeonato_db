CREATE TABLE ciudades (
    ciu_cod SERIAL PRIMARY KEY,
    ciu_desc VARCHAR(60) NOT NULL UNIQUE
);
CREATE TABLE estadio (
    est_cod SERIAL PRIMARY KEY,
    est_nombre VARCHAR(60) NOT NULL,
    est_capacidad INTEGER,
    ciu_cod INTEGER,
    FOREIGN KEY (ciu_cod) REFERENCES ciudades(ciu_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE equipos (
    equi_cod SERIAL PRIMARY KEY,
    equi_nombre VARCHAR(60) NOT NULL UNIQUE,
    ent_cod INTEGER,
    est_cod INTEGER,
    FOREIGN KEY (est_cod) REFERENCES estadio(est_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE entrenadores (
    ent_cod SERIAL PRIMARY KEY,
    ent_nombre VARCHAR(60) NOT NULL,
    ent_apellido VARCHAR(60) NOT NULL,
    equi_cod INTEGER,
    FOREIGN KEY (equi_cod) REFERENCES equipos(equi_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE jugadores (
    jug_cod SERIAL PRIMARY KEY,
    jug_nombre VARCHAR(60) NOT NULL,
    jug_apellido VARCHAR(60) NOT NULL,
    ciu_cod INTEGER,
    equi_cod INTEGER,
    FOREIGN KEY (ciu_cod) REFERENCES ciudades(ciu_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (equi_cod) REFERENCES equipos(equi_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE juegos (
    jue_cod SERIAL PRIMARY KEY,
    jue_local INTEGER NOT NULL,
    jue_visitante INTEGER NOT NULL,
    jue_duracion TIME,
    jue_fecha DATE,
    est_cod INTEGER,
    FOREIGN KEY (jue_local) REFERENCES equipos(equi_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (jue_visitante) REFERENCES equipos(equi_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (est_cod) REFERENCES estadio(est_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE arbitros (
    arb_cod SERIAL PRIMARY KEY,
    arb_nombre VARCHAR(60) NOT NULL,
    arb_apellido VARCHAR(60) NOT NULL,
    jue_cod INTEGER NOT NULL,
    FOREIGN KEY (jue_cod) REFERENCES juegos(jue_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE analisisdejugador (
    ana_cod SERIAL PRIMARY KEY,
    ana_gol INTEGER,
    ana_asistencias INTEGER,
    ana_trjamarilla INTEGER,
    ana_trjroja INTEGER,
    ana_partidosjugados INTEGER,
    jug_cod INTEGER,
    FOREIGN KEY (jug_cod) REFERENCES jugadores(jug_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE agendaentradas (
    age_cod SERIAL PRIMARY KEY,
    jue_cod INTEGER NOT NULL,
    FOREIGN KEY (jue_cod) REFERENCES juegos(jue_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE entradas (
ent_cod SERIAL PRIMARY KEY,
 ent_estado VARCHAR(20) NOT NULL CHECK (ent_estado IN ('Reservado', 'Confirmado', 'Anulado')),
 ent_fechareserva DATE,
 ent_precio INTEGER,
 cli_cod INTEGER,
 age_cod INTEGER,
     FOREIGN KEY (cli_cod) REFERENCES clientes(cli_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
	 FOREIGN KEY (age_cod) REFERENCES agendaentradas(age_cod) ON DELETE RESTRICT ON UPDATE CASCADE

);
CREATE TABLE clientes (
	cli_cod SERIAL PRIMARY KEY,
	cli_nombre VARCHAR(60) NOT NULL,
	cli_apellido VARCHAR(60) NOT NULL,
	cli_tel INTEGER,
	ciu_cod INTEGER,
	FOREIGN KEY (ciu_cod) REFERENCES ciudades(ciu_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE recordatorios (
    rec_cod SERIAL PRIMARY KEY,
    ent_cod INTEGER NOT NULL,
    rec_men TEXT NOT NULL,
    rec_fechaenvio DATE NOT NULL,
    FOREIGN KEY (ent_cod) REFERENCES entradas(ent_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
