create table Departamento(
idDepartemento int primary key,
codigoDepartamento int not null,
nombreDepartamento varchar(100) not null
); 

create table Paciente(
 idPaciente int primary key,
 NombrePaciente varchar(100) not null,
 apellidoPaciente varchar(100) not null,
 apellidoMaterno varchar(100) not null
);

create table Confirmados(
	idConfirmado int primary key,
    numeroConfirmado int not null
);

create table Codigo(
	idCodigo int primary key,
    numeral int not null
);

create table Municipio(
	idMunicipio int primary key,
    nombreMunicipio varchar(100) not null,
    poblacionTotal int not null
);

create table Fallecido(
	idFallecido int primary key,
    cantidad int not null
);

create table Tiempo(
	idTiempo int primary key,
    Año int not null,
    Mes int not null,
    Dia int not null
);

create table Recuperado(
	idRecuperados int primary key,
    cantidad int not null
);

create table SE(   /*SE (Semana Epidemiológica)*/
	idSe int primary key,
    numeralSE int not null
);

create table Activos(
	idActivos int primary key,
    Nactivos bit not null
);

create table ReporteCovid(
	idReporteCovid int primary key,
	idDepartamento int not null,
    idPaciente int not null,
    idConfirmados int not null,
    idCodigo int not null,
    idMunicipio int not null,
    idFallecido int not null,
    idTiempo int not null,
    idRecuperados int not null,
    idSE int not null,
    idActivos int not null,
    Eliminar bit not null,
    foreign key (idDepartamento) references Departamento(idDepartemento),
    foreign key (idPaciente) references Paciente(idPaciente),
    foreign key (idConfirmados) references Confirmados(idConfirmado),
    foreign key (idCodigo) references Codigo(idCodigo),
    foreign key (idMunicipio) references Municipio(idMunicipio),
    foreign key (idFallecido) references Fallecido(idFallecido),
    foreign key (idTiempo) references Tiempo(idTiempo),
    foreign key (idRecuperados) references Recuperado(idRecuperados),
    foreign key (idSE) references SE(idSe),
    foreign key (idActivos) references Activos(idActivos)
);

create table Usuario(
	idUsuario int primary key,
    nombreUsuario varchar(500) not null,
    contraseña varchar(100) not null,
    roles varchar(500) not null,
    correo varchar(500) not null,
    foreign key (idUsuario) references Persona(idPersona)
);

create table Persona(
	idPersona int primary key,
    nombrePersona varchar(500) not null,
    apellidoPaterno varchar(500) not null,
    apellidoMaterno varchar(500) not null,
    celulaIdentidad int not null,
    foreign key Persona(idPersona) references Paciente(idPaciente)
);

INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('01', '01', 'CHUQUISACA');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('02', '2', 'LA PAZ');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('03', '3', 'COCHABAMBA');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('04', '4', 'ORURO');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('05', '5', 'POTOSI');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('06', '6', 'TARIJA');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('07', '7', 'SANTA CRUZ');
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('08', '8', 'BENI'); 
INSERT INTO departamento(idDepartemento, codigoDepartamento, nombreDepartamento) VALUES ('09', '9', 'PANDO');

SELECT * FROM departamento;
SELECT * FROM paciente;
SELECT * FROM confirmados;
SELECT * FROM codigo;
SELECT * FROM municipio;
SELECT * FROM fallecido;
SELECT * FROM tiempo;
SELECT * FROM recuperado;
SELECT * FROM se;
SELECT * FROM activos;

SELECT * FROM usuario;
SELECT * FROM persona;

INSERT INTO usuario(idUsuario, nombreUsuario, contraseña, roles, correo) VALUES ('01', 'Julio', aes_encrypt('123456JL'), 'Adminnistrador', 'julio@gmail.com');
INSERT INTO usuario(idUsuario, nombreUsuario, contraseña, roles, correo) VALUES ('02', 'Maria', aes_encrypt('891954MR'), 'Medico', 'maria@gmail.com');
INSERT INTO usuario(idUsuario, nombreUsuario, contraseña, roles, correo) VALUES ('03', 'Pedro', aes_encrypt('984774PD'), 'Enfermero', 'pedro@gmail.com');
INSERT INTO usuario(idUsuario, nombreUsuario, contraseña, roles, correo) VALUES ('04', 'Teresa', aes_encrypt('648798TR'), 'Enfermera', 'teresa@gmail.com');
INSERT INTO usuario(idUsuario, nombreUsuario, contraseña, roles, correo) VALUES ('05', 'Jose Luis', aes_encrypt('159849JL'), 'Medico', 'joseluis@gmail.com'); 
INSERT INTO usuario(idUsuario, nombreUsuario, contraseña, roles, correo) VALUES ('06', 'Marco', aes_encrypt('357987MC'),'Medico', 'marco@gmail.com');

/*El conjunto de datos covid19_municipios, 
la cual es base para la elaboración del mapa de REPORTE SEMANAL DE CASOS COVID-19
 publicado en la página https://snis.minsalud.gob.bo/ . La fuente de la información
 es el Sistema Nacional de Información en Salud y Vigilancia Epidemiológica - SNISVE.
 Datos Actualizados a la Semana epidemiológica 48*/

