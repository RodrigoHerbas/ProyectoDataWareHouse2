create table Departamento(
idDepartemento int primary key auto_increment,
codigoDepartamento int not null,
nombreDepartamento varchar(500) not null
); 

create table Paciente(
 idPaciente int primary key auto_increment,
 NombrePaciente varchar(500) not null,
 apellidoPaciente varchar(500) not null,
 apellidoMaterno varchar(500) not null
);

create table Confirmados(
	idConfirmado int primary key auto_increment,
    numeroConfirmado int not null
);

create table Codigo(
	idCodigo int primary key auto_increment,
    numeral int not null
);

create table Municipio(
	idMunicipio int primary key auto_increment,
    nombreMunicipio varchar(500) not null,
    poblacionTotal int not null
);

create table Fallecido(
	idFallecido int primary key auto_increment,
    cantidad int not null
);

create table Tiempo(
	idTiempo int primary key auto_increment,
    Año int not null,
    Mes int not null,
    Dia int not null
);

create table Recuperado(
	idRecuperados int primary key auto_increment,
    cantidad int not null
);

create table SE(
	idSe int primary key auto_increment,
    numeralSE int not null
);

create table Activos(
	idActivos int primary key auto_increment,
    Nactivos int not null
);

create table ReporteCovid(
	idReporteCovid int primary key auto_increment,
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
	idUsuario int primary key auto_increment,
    nombreUsuario varchar(500) not null,
    contraseña decimal not null,
    roles varchar(500) not null,
    correo varchar(500) not null,
    foreign key Usuario(idUsuario) references Persona(idPersona)
);

create table Persona(
	idPersona int primary key auto_increment,
    nombrePersona varchar(500) not null,
    apellidoPaterno varchar(500) not null,
    apellidoMaterno varchar(500) not null,
    celulaIdentidad int not null
);

INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('1', 'CHUQUISACA');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('2', 'LA PAZ');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('3', 'COCHABAMBA');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('4', 'ORURO');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('5', 'POTOSI');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('6', 'TARIJA');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('7', 'SANTA CRUZ');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('8', 'BENI');
INSERT INTO Departamento(codigoDepartamento, nombreDepartamento) VALUES ('9', 'PANDO');

INSERT INTO Paciente(NombrePaciente, apellidoPaciente, apellidoMaterno) VALUES ();
