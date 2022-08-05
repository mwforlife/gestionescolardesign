create database gestionescolar;

use gestionescolar;

create table tipo_personal(
id_tip int not null primary key,
nombre varchar(30) not null
);

insert into tipo_personal values(null,"Docente");
insert into tipo_personal values(null, "Asistentes");
insert into tipo_personal values(null, "Inspector");

create table personal(
id_per int not null auto_increment primary key,
rut varchar(12) not null,
nombre varchar(40) not null,
apellido varchar(50) not null,
correo varchar(60) not null,
id_tip int not null references tipo_personal(id_tip)
);


create table tipo_usuarios(
id_tip int not null primary key,
nombre varchar(30) not null
);

create table usuarios(
id_usu int not null primary key,
correo varchar(60) not null,
contrasena varchar(64) not null,
id_per int not null references personal(id_per),
id_tip int not null references tipo_usuario(id_tip)
);

#tabla regiones
create table regiones(
id_reg int not null primary key,
nom_reg varchar(70) not null
);

#tabla comunas
create table comunas(
id_com int not null primary key auto_increment,
nom_com varchar(50) not null,
id_reg int not null references regiones(id_reg) 
);

create table prevision(
id_pre int not null auto_increment primary key,
nombre varchar(40) not null
);

create table genero(
id_gen int not null auto_increment primary key,
nombre varchar(40) not null
);

create table alumnos(
id_alu int not null auto_increment primary key,
rut varchar(12) not null,
nombres varchar(60) not null,
ape_paterno varchar(40) not null,
ape_materno varchar(40),
fecnac date not null,
id_gen int not null references genero(id_gen),
direccion varchar(100) not null,
num_casa int not null,
id_com int not null references comunas(id_com),
ciudad varchar(60) not null,
poblacion varchar(60) not null,
telefono varchar(20) not null,
responsable varchar(50) not null,
id_pre int not null references prevision(id_pre)
);

create table curso(
id_cur int not null auto_increment primary key,
nombre varchar(30) not null
);

create table estado_mat(
id_estmat int not null auto_increment primary key,
nombre varchar(40) not null
);

insert into estado_mat values(null, "No-Matriculado");
insert into estado_mat values(null, "Pre-Matriculado");
insert into estado_mat values(null, "Matriculado");

create table detalle_curso(
id_det int not null auto_increment primary key,
id_alu int not null references alumnos(id_alu),
id_cur int not null references curso(id_cur),
ano int not null,
id_estmat int not null references estado_mat(id_estmat)
);

create table parentesco(
id_par int not null auto_increment primary key,
nombre varchar(40) not null
);

create table parientes(
id_pa int not null primary key,
rut varchar(12) not null,
nombre varchar(80) not null,
email varchar(80) not null,
telefono varchar(20) not null,
direccion varchar(80) not null,
ocupacion varchar(100) not null,
id_par int not null references parentesco(id_par)
);

create table gruposanguino(
id_grup int not null auto_increment primary key,
nombre varchar(10) not null
);

insert into gruposanguino values(null,"O-");
insert into gruposanguino values(null,"O+");
insert into gruposanguino values(null,"A-");
insert into gruposanguino values(null,"A+");
insert into gruposanguino values(null,"B-");
insert into gruposanguino values(null,"B+");
insert into gruposanguino values(null,"AB-");
insert into gruposanguino values(null,"AB+");

create table factorrh(
id_fac int not null auto_increment primary key,
nombre varchar(30) not null
);

insert into factorrh values (null,"Positivo");
insert into factorrh values (null,"Negativo");

create table enfermedadanterior(
id_enf int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into enfermedadanterior values (null, "SI");
insert into enfermedadanterior values (null, "NO");


create table secuelas(
id_sec int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into secuelas values (null, "SI");
insert into secuelas values (null, "NO");

create table diabetes(
id_dia int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into diabetes values (null, "SI");
insert into diabetes values (null, "NO");


create table celiaca(
id_celia int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into celiaca values (null, "SI");
insert into celiaca values (null, "NO");

create table asma(
id_asma int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into asma values (null, "SI");
insert into asma values (null, "NO");

create table otrascronicas(
id_otcro int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into otrascronicas values (null, "SI");
insert into otrascronicas values (null, "NO");


create table alimentarias(
id_alim int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into alimentarias values (null, "SI");
insert into alimentarias values (null, "NO");

create table medicamentos(
id_medi int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into medicamentos values (null, "SI");
insert into medicamentos values (null, "NO");


create table respiratorias(
id_resp int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into respiratorias values (null, "SI");
insert into respiratorias values (null, "NO");


create table contacto(
id_cont int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into contacto values (null, "SI");
insert into contacto values (null, "NO");


create table intolerancia(
id_int int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into intolerancia values (null, "SI");
insert into intolerancia values (null, "NO");


create table otrasalergias(
id_otra int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into otrasalergias values (null, "SI");
insert into otrasalergias values (null, "NO");

create table operaciones(
id_ope int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into operaciones values (null, "SI");
insert into operaciones values (null, "NO");


create table accidentes(
id_acci int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into accidentes values (null, "SI");
insert into accidentes values (null, "NO");


create table auditivas(
id_aud int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into auditivas values (null, "SI");
insert into auditivas values (null, "NO");

create table visuales(
id_vis int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into visuales values (null, "SI");
insert into visuales values (null, "NO");


create table otrasdeficiencias(
id_otdef int not null auto_increment primary key,
nombre varchar(2) not null
);

insert into otrasdeficiencias values (null, "SI");
insert into otrasdeficiencias values (null, "NO");

################################################
create table fichasalud(
id_fich int not null auto_increment primary key,
id_alu int not null references alumnos(id_alu),
peso int not null,
talla int not null,
id_grup int not null references gruposanguino(id_gru),
id_fac int not null references factorrh(id_fac)
);
#Pendiente
########################################################################


#########################################################################
##Inserción Curso
insert into curso(nombre) values('1 Basico A');
insert into curso(nombre) values('1 Basico B');
insert into curso(nombre) values('2 Basico A');
insert into curso(nombre) values('2 Basico B');
insert into curso(nombre) values('3 Basico A');
insert into curso(nombre) values('3 Basico B');
insert into curso(nombre) values('4 Basico A');
insert into curso(nombre) values('4 Basico B');
insert into curso(nombre) values('5 Basico A');
insert into curso(nombre) values('5 Basico B');
insert into curso(nombre) values('6 Basico A');
insert into curso(nombre) values('6 Basico B');
insert into curso(nombre) values('7 Basico A');
insert into curso(nombre) values('7 Basico B');
insert into curso(nombre) values('8 Basico A');
insert into curso(nombre) values('8 Basico B');
insert into curso(nombre) values('1 Medio A');
insert into curso(nombre) values('1 Medio B');
insert into curso(nombre) values('2 Medio A');
insert into curso(nombre) values('2 Medio B');
insert into curso(nombre) values('3 Medio');
insert into curso(nombre) values('4 Medio');
insert into curso(nombre) values('Prekinder A');
insert into curso(nombre) values('Prekinder B');
insert into curso(nombre) values('Kinder A');
insert into curso(nombre) values('Kinder B');

/*insercion regiones*/
insert into regiones values(1,"Región de Arica y Parinacota");
insert into regiones values(2,"Región de Tarapacá");
insert into regiones values(3,"Región de Antofagasta");
insert into regiones values(4,"Región de Atacama");
insert into regiones values(5,"Región de Coquimbo");
insert into regiones values(6,"Región de Valparaiso");
insert into regiones values(7,"Región del Libertador General Bernardo O'Higgins");
insert into regiones values(8,"Región del Maule");
insert into regiones values(9,"Región del BioBio");
insert into regiones values(10,"Región de La Araucania");
insert into regiones values(11,"Región de Los Ríos");
insert into regiones values(12,"Región de Los Lagos");
insert into regiones values(13,"Región de Aysén del General Carlos ibáñez del Campo");
insert into regiones values(14,"Región de Magallanes y la Antartica Chilena");
insert into regiones values(15,"Región Metropolitana de Santiago");

/*Insercion Comunas*/
/*Comunas de la region Arica Parinacota*/
insert into comunas values(null,"Arica",1);
insert into comunas values(null,"Camarones",1);
insert into comunas values(null,"Putre",1);
insert into comunas values(null,"General Lagos",1);

/*Comunas de la region Tarapaca*/
insert into comunas values(null,"Iquique",2);
insert into comunas values(null,"Alto Hospicio",2);
insert into comunas values(null,"Pozo Almonte",2);
insert into comunas values(null,"Camiña",2);
insert into comunas values(null,"Colchane",2);
insert into comunas values(null,"Huara",2);
insert into comunas values(null,"Pica",2);

/*Comunas de la region Antofagasta*/
insert into comunas values(null,"Antofagasta",3);
insert into comunas values(null,"Mejillones",3);
insert into comunas values(null,"Sierra Gorda",3);
insert into comunas values(null,"Taltal",3);
insert into comunas values(null,"Calama",3);
insert into comunas values(null,"Ollagüe",3);
insert into comunas values(null,"San Pedro de Atacama",3);
insert into comunas values(null,"Tocopilla",3);
insert into comunas values(null,"María Elena",3);

/*Comunas de la region Atacama*/
insert into comunas values(null,"Copiapó",4);
insert into comunas values(null,"Caldrea",4);
insert into comunas values(null,"Tierra Amarilla",4);
insert into comunas values(null,"Chañaral",4);
insert into comunas values(null,"Diego de Almagro",4);
insert into comunas values(null,"Vallenar",4);
insert into comunas values(null,"Alto del Carmen",4);
insert into comunas values(null,"Freirina",4);
insert into comunas values(null,"Huasco",4);

/*Comunas de la region Coquimbo*/
insert into comunas values(null,"La Serena",5);
insert into comunas values(null,"Coquimbo",5);
insert into comunas values(null,"Andacollo",5);
insert into comunas values(null,"La Higuera",5);
insert into comunas values(null,"Paiguano",5);
insert into comunas values(null,"Vicuña",5);
insert into comunas values(null,"Illapel",5);
insert into comunas values(null,"Canela",5);
insert into comunas values(null,"Los Vilos",5);
insert into comunas values(null,"Salamanca",5);
insert into comunas values(null,"Ovalle",5);
insert into comunas values(null,"Combarbalá",5);
insert into comunas values(null,"Monte Patria",5);
insert into comunas values(null,"Punitaqui",5);
insert into comunas values(null,"Rio Hurtado",5);

/*Comunas de la region Valparaiso*/
insert into comunas values(null,"Valparaiso",6);
insert into comunas values(null,"CasaBlanca",6);
insert into comunas values(null,"Concón",6);
insert into comunas values(null,"Juan Fernández",6);
insert into comunas values(null,"Puchuncavi",6);
insert into comunas values(null,"Quintero",6);
insert into comunas values(null,"Viña del Mar",6);
insert into comunas values(null,"Isla de Pascua",6);
insert into comunas values(null,"Los Andes",6);
insert into comunas values(null,"Calle Larga",6);
insert into comunas values(null,"Rinconada",6);
insert into comunas values(null,"San Esteban",6);
insert into comunas values(null,"La Ligua",6);
insert into comunas values(null,"Cabildo",6);
insert into comunas values(null,"Papudo",6);
insert into comunas values(null,"Petorca",6);
insert into comunas values(null,"Zapallar",6);
insert into comunas values(null,"Quillota",6);
insert into comunas values(null,"Calera",6);
insert into comunas values(null,"Hijuelas",6);
insert into comunas values(null,"La Cruz",6);
insert into comunas values(null,"Nogales",6);
insert into comunas values(null,"San Antonio",6);
insert into comunas values(null,"Algarrobo",6);
insert into comunas values(null,"Cartagena",6);
insert into comunas values(null,"El Quisco",6);
insert into comunas values(null,"El Tabo",6);
insert into comunas values(null,"Santo Domingo",6);
insert into comunas values(null,"San Felipe",6);
insert into comunas values(null,"Catemu",6);
insert into comunas values(null,"Llaillay",6);
insert into comunas values(null,"Panquehue",6);
insert into comunas values(null,"Putaendo",6);
insert into comunas values(null,"Santa Maria",6);
insert into comunas values(null,"Limache",6);
insert into comunas values(null,"Quilpué",6);
insert into comunas values(null,"Villa Alemana",6);
insert into comunas values(null,"Olmué",6);

/*Comunas de la region Libertador Gral. bernardo O'Higgins*/
insert into comunas values(null,"Rancagua",7);
insert into comunas values(null,"Codegua",7);
insert into comunas values(null,"Coinco",7);
insert into comunas values(null,"Coltauco",7);
insert into comunas values(null,"Doñihue",7);
insert into comunas values(null,"Graneros",7);
insert into comunas values(null,"Las Cabras",7);
insert into comunas values(null,"Machali",7);
insert into comunas values(null,"Malloa",7);
insert into comunas values(null,"Mostazal",7);
insert into comunas values(null,"Olivar",7);
insert into comunas values(null,"Peumo",7);
insert into comunas values(null,"piChedegua",7);
insert into comunas values(null,"Quinta de Tilcoco",7);
insert into comunas values(null,"Rengo",7);
insert into comunas values(null,"Requinoa",7);
insert into comunas values(null,"San Vicente",7);
insert into comunas values(null,"Pichilemu",7);
insert into comunas values(null,"Las Estrellas",7);
insert into comunas values(null,"Litueche",7);
insert into comunas values(null,"Marchihue",7);
insert into comunas values(null,"Navidad",7);
insert into comunas values(null,"Paredones",7);
insert into comunas values(null,"San Fernando",7);
insert into comunas values(null,"Chépica",7);
insert into comunas values(null,"Chimbarongo",7);
insert into comunas values(null,"Lolol",7);
insert into comunas values(null,"Nancagua",7);
insert into comunas values(null,"Palmilla",7);
insert into comunas values(null,"Peralillo",7);
insert into comunas values(null,"Placilla",7);
insert into comunas values(null,"Pumanque",7);
insert into comunas values(null,"Santa Cruz",7);

/*Comunas de la region del Maule*/
insert into comunas values(null,"Talca",8);
insert into comunas values(null,"Constitución",8);
insert into comunas values(null,"Curepto",8);
insert into comunas values(null,"Empedrado",8);
insert into comunas values(null,"Maule",8);
insert into comunas values(null,"Pelarco",8);
insert into comunas values(null,"Pencahue",8);
insert into comunas values(null,"Rio Claro",8);
insert into comunas values(null,"San Clemente",8);
insert into comunas values(null,"San Rafael",8);
insert into comunas values(null,"Cauquenes",8);
insert into comunas values(null,"Chanco",8);
insert into comunas values(null,"Curico",8);
insert into comunas values(null,"Hualañe",8);
insert into comunas values(null,"Licantén",8);
insert into comunas values(null,"Molina",8);
insert into comunas values(null,"Rauco",8);
insert into comunas values(null,"Romeral",8);
insert into comunas values(null,"Sagrada Familia",8);
insert into comunas values(null,"Teno",8);
insert into comunas values(null,"Vichuquén",8);
insert into comunas values(null,"linares",8);
insert into comunas values(null,"Colbún",8);
insert into comunas values(null,"Longaví",8);
insert into comunas values(null,"Parral",8);
insert into comunas values(null,"Retiro",8);
insert into comunas values(null,"San Javier",8);
insert into comunas values(null,"Villa Alegre",8);
insert into comunas values(null,"Yerbas Buenas",8);

/*Comunas de la region del BioBio*/
insert into comunas values(null,"Concepción",9);
insert into comunas values(null,"Coronel",9);
insert into comunas values(null,"Chiguayante",9);
insert into comunas values(null,"Florida",9);
insert into comunas values(null,"Hualqui",9);
insert into comunas values(null,"Lota",9);
insert into comunas values(null,"penco",9);
insert into comunas values(null,"San Pedro de la Paz",9);
insert into comunas values(null,"Santa Juana",9);
insert into comunas values(null,"Talcahuano",9);
insert into comunas values(null,"Tomé",9);
insert into comunas values(null,"Hualpén",9);
insert into comunas values(null,"Lebu",9);
insert into comunas values(null,"Arauco",9);
insert into comunas values(null,"Cañete",9);
insert into comunas values(null,"Contulmo",9);
insert into comunas values(null,"Curanilahue",9);
insert into comunas values(null,"Los Alomos",9);
insert into comunas values(null,"Turúa",9);
insert into comunas values(null,"Los angeles",9);
insert into comunas values(null,"Antuco",9);
insert into comunas values(null,"Cabrero",9);
insert into comunas values(null,"Laja",9);
insert into comunas values(null,"Mulchén",9);
insert into comunas values(null,"Nacimiento",9);
insert into comunas values(null,"Negrete",9);
insert into comunas values(null,"Quilaco",9);
insert into comunas values(null,"Quilleco",9);
insert into comunas values(null,"San Rosendo",9);
insert into comunas values(null,"Santa Bärbara",9);
insert into comunas values(null,"Tucapel",9);
insert into comunas values(null,"Yumbel",9);
insert into comunas values(null,"Alto Biiobío",9);
insert into comunas values(null,"Chillán",9);
insert into comunas values(null,"Bulnes",9);
insert into comunas values(null,"Cobquecura",9);
insert into comunas values(null,"Coelemu",9);
insert into comunas values(null,"Coihueco",9);
insert into comunas values(null,"Chillán Viejo",9);
insert into comunas values(null,"El Carmen",9);
insert into comunas values(null,"Ninhue",9);
insert into comunas values(null,"Ñiquen",9);
insert into comunas values(null,"Pemuco",9);
insert into comunas values(null,"Pinto",9);
insert into comunas values(null,"Portezuelo",9);
insert into comunas values(null,"Quillón",9);
insert into comunas values(null,"Quirihue",9);
insert into comunas values(null,"Ránquil",9);
insert into comunas values(null,"San Carlos",9);
insert into comunas values(null,"San Fabián",9);
insert into comunas values(null,"San Ignacio",9);
insert into comunas values(null,"San Nicolás",9);
insert into comunas values(null,"Treguaco",9);
insert into comunas values(null,"Yungay",9);

/*Las comunas de la region Araucania*/
insert into comunas values(null,"Temuco",10);
insert into comunas values(null,"Carahue",10);
insert into comunas values(null,"Cunco",10);
insert into comunas values(null,"Currahue",10);
insert into comunas values(null,"Freire",10);
insert into comunas values(null,"Galvarino",10);
insert into comunas values(null,"Gorbea",10);
insert into comunas values(null,"Lautaro",10);
insert into comunas values(null,"Loncoche",10);
insert into comunas values(null,"Melipeuco",10);
insert into comunas values(null,"Nueva Imperial",10);
insert into comunas values(null,"Padre de las Casas",10);
insert into comunas values(null,"Perquenco",10);
insert into comunas values(null,"Pitrufquén",10);
insert into comunas values(null,"Pucón",10);
insert into comunas values(null,"Saavedra",10);
insert into comunas values(null,"Teodoro Schmidt",10);
insert into comunas values(null,"Toltén",10);
insert into comunas values(null,"Vilcún",10);
insert into comunas values(null,"Villarrica",10);
insert into comunas values(null,"Cholchol",10);
insert into comunas values(null,"Angol",10);
insert into comunas values(null,"Collipulli",10);
insert into comunas values(null,"Curacautín",10);
insert into comunas values(null,"Ercilla",10);
insert into comunas values(null,"Lonquimay",10);
insert into comunas values(null,"Los Sauces",10);
insert into comunas values(null,"Lumaco",10);
insert into comunas values(null,"Purén",10);
insert into comunas values(null,"Renaico",10);
insert into comunas values(null,"Traguén",10);
insert into comunas values(null,"Victoria",10);

/*Comunas de la region de los RIOS*/
insert into comunas values(null,"Valdiva",11);
insert into comunas values(null,"Corral",11);
insert into comunas values(null,"Lanco",11);
insert into comunas values(null,"Los Lagos",11);
insert into comunas values(null,"Marfil",11);
insert into comunas values(null,"Mariquina",11);
insert into comunas values(null,"Paillaco",11);
insert into comunas values(null,"Panguipulli",11);
insert into comunas values(null,"La Unión",11);
insert into comunas values(null,"Futrono",11);
insert into comunas values(null,"lago Ranco",11);
insert into comunas values(null,"Río Bueno",11);

/*Comunas de la region los Lagos*/
insert into comunas values(null,"Puerto Montt",12);
insert into comunas values(null,"Calbuco",12);
insert into comunas values(null,"Cochamó",12);
insert into comunas values(null,"Fresia",12);
insert into comunas values(null,"Frutillar",12);
insert into comunas values(null,"Los Muermos",12);
insert into comunas values(null,"Llanquihue",12);
insert into comunas values(null,"Maullín",12);
insert into comunas values(null,"Puerto Varas",12);
insert into comunas values(null,"Castro",12);
insert into comunas values(null,"Ancud",12);
insert into comunas values(null,"Chonchi",12);
insert into comunas values(null,"Curaco de Vélez",12);
insert into comunas values(null,"Dalcahue",12);
insert into comunas values(null,"Puqueldón",12);
insert into comunas values(null,"Queilén",12);
insert into comunas values(null,"Quellón",12);
insert into comunas values(null,"Quemchi",12);
insert into comunas values(null,"Quimchao",12);
insert into comunas values(null,"Osorno",12);
insert into comunas values(null,"Puerto Octay",12);
insert into comunas values(null,"Purranque",12);
insert into comunas values(null,"Puyehue",12);
insert into comunas values(null,"Río Negro",12);
insert into comunas values(null,"San Juan de la Costa",12);
insert into comunas values(null,"San Pablo",12);
insert into comunas values(null,"Chaitén",12);
insert into comunas values(null,"Futaleufú",12);
insert into comunas values(null,"Hualaihúe",12);
insert into comunas values(null,"Palena",12);

/*Comunas de la region Aisen*/

insert into comunas values(null,"Coyhaique",13);
insert into comunas values(null,"Lago Verde",13);
insert into comunas values(null,"Aisén",13);
insert into comunas values(null,"Cisnes",13);
insert into comunas values(null,"Guaitecas",13);
insert into comunas values(null,"Cochrane",13);
insert into comunas values(null,"O'Higgins",13);
insert into comunas values(null,"Tortel",13);
insert into comunas values(null,"Chile Chico",13);
insert into comunas values(null,"Rio Ibáñez",13);

/*Region de MAGALLANES Y DE LA ANTÁRTICA CHILENA */
insert into comunas values(null,"Punta Arenas",14);
insert into comunas values(null,"Laguna Blanca",14);
insert into comunas values(null,"Río Verde",14);
insert into comunas values(null,"San Gregorio",14);
insert into comunas values(null,"Cabo de Hornos",14);
insert into comunas values(null,"Antártica",14);
insert into comunas values(null,"Porvenir",14);
insert into comunas values(null,"Primavera",14);
insert into comunas values(null,"Timaukel",14);
insert into comunas values(null,"Natales",14);
insert into comunas values(null,"Torres del Paine",14);

/*Comunas de la region Metropolitana de Santiago*/
insert into comunas values(null,"Santiago",15);
insert into comunas values(null,"Cerrillos",15);
insert into comunas values(null,"Cerro Navia",15);
insert into comunas values(null,"Conchali",15);
insert into comunas values(null,"El Bosque",15);
insert into comunas values(null,"Estación Central",15);
insert into comunas values(null,"Huechuraba",15);
insert into comunas values(null,"Independencia",15);
insert into comunas values(null,"La Cisterna",15);
insert into comunas values(null,"La Florida",15);
insert into comunas values(null,"La Granja",15);
insert into comunas values(null,"La Pintana",15);
insert into comunas values(null,"La Reina",15);
insert into comunas values(null,"Las Condes",15);
insert into comunas values(null,"Lo Barnechea",15);
insert into comunas values(null,"Lo Espejo",15);
insert into comunas values(null,"Lo Prado",15);
insert into comunas values(null,"Macul",15);
insert into comunas values(null,"Maipú",15);
insert into comunas values(null,"Ñuñoa",15);
insert into comunas values(null,"Pedro Aguirre Cerda",15);
insert into comunas values(null,"Peñalolén",15);
insert into comunas values(null,"Providencia",15);
insert into comunas values(null,"Pugahuel",15);
insert into comunas values(null,"Quilicura",15);
insert into comunas values(null,"Quinta Normal",15);
insert into comunas values(null,"Recoleta",15);
insert into comunas values(null,"Renca",15);
insert into comunas values(null,"San Joaquín",15);
insert into comunas values(null,"San Miguel",15);
insert into comunas values(null,"San Ramón",15);
insert into comunas values(null,"Vitacura",15);
insert into comunas values(null,"Puente Alto",15);
insert into comunas values(null,"Pirque",15);
insert into comunas values(null,"San José de Maipo",15);
insert into comunas values(null,"Colina",15);
insert into comunas values(null,"Lampa",15);
insert into comunas values(null,"Tiltril",15);
insert into comunas values(null,"San Bernardo",15);
insert into comunas values(null,"Buin",15);
insert into comunas values(null,"Calera de Tango",15);
insert into comunas values(null,"Paine",15);
insert into comunas values(null,"Melipilla",15);
insert into comunas values(null,"Alhué",15);
insert into comunas values(null,"Curacavi",15);
insert into comunas values(null,"María Pinto",15);
insert into comunas values(null,"San Pedro",15);
insert into comunas values(null,"Talagante",15);
insert into comunas values(null,"El Monte",15);
insert into comunas values(null,"Isla de Maipo",15);
insert into comunas values(null,"Padre Hurtado",15);
insert into comunas values(null,"Peñaflor",15);
##################################################################

