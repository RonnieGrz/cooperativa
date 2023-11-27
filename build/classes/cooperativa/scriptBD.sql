create table Usuario  (
   USNUMDOCUMENTO      INT                not null,
   USCONTRASENA        VARCHAR2(50)       not null,
   USTIPODOCUMENTO     VARCHAR2(50)       not null,
   USNOMBRE            VARCHAR2(50)       not null,
   USAPELLIDO          VARCHAR2(50)       not null,
   USCORREO            VARCHAR2(50)       not null,
   USTELEFONO          NUMBER             not null,
   USROL               INT                not null,
   USESTADOAFILIACION  INT                not null,
   
   constraint PK_USUARIO primary key(USNUMDOCUMENTO),
   CONSTRAINT CK_USNUMDOCUMENTO CHECK (USNUMDOCUMENTO > 0),
   CONSTRAINT CK_USTIPODOCUMENTO CHECK (UPPER(USTIPODOCUMENTO) IN ('CC', 'CE', 'TI')),
   CONSTRAINT CK_USTELEFONO CHECK (USTELEFONO > 0)
);

-- Insert para un usuario administrador
-- insert into usuario usnumdocumento, uscontrasena, ustipodocumento, usnombre, usapellido, uscorreo, ustelefono, usrol, usestadoafiliacion
-- values(1001, 1001, cc, admin, istrador, admin@admincoop.com, 3106133709, 1, 1)
 
create table Ahorro (
AHID                 INT            NOT NULL,
ASOID                INT            not null,
AHVALOR              number(9,0)    not null,
AHFECHAPAGO          DATE           not null,

constraint PK_Ahorro primary key (AHID),
constraint fk_Ahorro foreign key (ASOID) references usuario(USNUMDOCUMENTO),
constraint CK_AHVALOR  CHECK (AHVALOR >= 100000)
       
);
