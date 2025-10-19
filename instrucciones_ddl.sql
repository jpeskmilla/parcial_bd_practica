CREATE TABLE ciudad (
    ciudad_id INTEGER PRIMARY KEY,
    nombre_ciudad VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(20)
);

CREATE TABLE usuario (
    usuario_id INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    ciudad_id INTEGER NOT NULL,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE cliente (
    cliente_id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    fecha_registro TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE empleado (
    empleado_id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    fecha_contratacion TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE proveedor (
    proveedor_id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    empresa VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE condicion_especial (
    condicion_id INTEGER PRIMARY KEY,
    condicion_nombre VARCHAR(100) NOT NULL
);

CREATE TABLE usuario_condicion (
    usuario_id INTEGER NOT NULL,
    condicion_id INTEGER NOT NULL,
    PRIMARY KEY (usuario_id, condicion_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (condicion_id) REFERENCES condicion_especial(condicion_id)
);

CREATE TABLE cargo (
    cargo_id INTEGER PRIMARY KEY,
    cargo_nombre VARCHAR(100) NOT NULL
);

CREATE TABLE departamento (
    departamento_id INTEGER PRIMARY KEY,
    departamento_nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleado_cargo (
    empleado_id INTEGER NOT NULL,
    cargo_id INTEGER NOT NULL,
    PRIMARY KEY (empleado_id, cargo_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
    FOREIGN KEY (cargo_id) REFERENCES cargo(cargo_id)
);

CREATE TABLE empleado_departamento (
    empleado_id INTEGER NOT NULL,
    departamento_id INTEGER NOT NULL,
    PRIMARY KEY (empleado_id, departamento_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
    FOREIGN KEY (departamento_id) REFERENCES departamento(departamento_id)
);

CREATE TABLE servicio (
    servicio_id INTEGER PRIMARY KEY,
    servicio_nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(150),
    estado VARCHAR(50)
);

CREATE TABLE turno (
    turno_id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    servicio_id INTEGER NOT NULL,
    empleado_id INTEGER NOT NULL,
    fecha TIMESTAMP NOT NULL,
    hora_inicio TIMESTAMP NOT NULL,
    hora_fin TIMESTAMP NOT NULL,
    estado VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);

CREATE TABLE medio (
    medio_id INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE contacto (
    contacto_id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    medio_id INTEGER NOT NULL,
    valor VARCHAR(100) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medio(medio_id)
);

CREATE TABLE notificacion (
    notificacion_id INTEGER PRIMARY KEY,
    contacto_id INTEGER NOT NULL,
    mensaje VARCHAR(150),
    fecha_envio TIMESTAMP,
    estado VARCHAR(50),
    FOREIGN KEY (contacto_id) REFERENCES contacto(contacto_id)
);