INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Cali', '760001'),
(2, 'Bogotá', '110111'),
(3, 'Medellín', '050001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Pereira', '660001'),
(8, 'Manizales', '170001'),
(9, 'Ibagué', '730001'),
(10, 'Santa Marta', '470001');

INSERT INTO usuario (usuario_id, nombre, apellido, ciudad_id) VALUES
(1, 'Juan', 'Pérez', 1),
(2, 'María', 'González', 1),
(3, 'Carlos', 'Rodríguez', 2),
(4, 'Ana', 'Martínez', 3),
(5, 'Luis', 'López', 1),
(6, 'Laura', 'Hernández', 4),
(7, 'Pedro', 'García', 5),
(8, 'Carmen', 'Díaz', 2),
(9, 'Jorge', 'Ramírez', 6),
(10, 'Sofía', 'Torres', 3);

INSERT INTO cliente (cliente_id, usuario_id, fecha_registro) VALUES
(1, 1, '2025-01-15 08:30:00'),
(2, 2, '2025-02-10 09:15:00'),
(3, 4, '2025-03-05 10:00:00'),
(4, 6, '2025-04-12 11:20:00'),
(5, 7, '2025-05-20 14:45:00'),
(6, 8, '2025-06-08 16:30:00'),
(7, 9, '2025-07-14 08:00:00'),
(8, 10, '2025-08-22 13:10:00'),
(9, 3, '2025-09-01 15:25:00'),
(10, 5, '2025-10-05 12:40:00');

INSERT INTO empleado (empleado_id, usuario_id, fecha_contratacion) VALUES
(1, 2, '2023-01-10 08:00:00'),
(2, 3, '2023-02-15 08:00:00'),
(3, 5, '2023-03-20 08:00:00'),
(4, 8, '2023-04-25 08:00:00'),
(5, 1, '2023-05-30 08:00:00'),
(6, 4, '2023-06-05 08:00:00'),
(7, 6, '2023-07-10 08:00:00'),
(8, 7, '2023-08-15 08:00:00'),
(9, 9, '2023-09-20 08:00:00'),
(10, 10, '2023-10-25 08:00:00');

INSERT INTO proveedor (proveedor_id, usuario_id, empresa) VALUES
(1, 1, 'Distribuciones Cali S.A.'),
(2, 3, 'LogiExpress Ltda'),
(3, 5, 'Suministros del Valle'),
(4, 7, 'TransCarga Colombia'),
(5, 9, 'Servicios Integrales'),
(6, 2, 'Proveedora Nacional'),
(7, 4, 'Insumos y Más'),
(8, 6, 'Comercializadora XYZ'),
(9, 8, 'Almacén Central'),
(10, 10, 'Distribuidora Regional');

INSERT INTO condicion_especial (condicion_id, condicion_nombre) VALUES
(1, 'Embarazo'),
(2, 'Silla de ruedas'),
(3, 'Adulto mayor'),
(4, 'Discapacidad visual'),
(5, 'Discapacidad auditiva'),
(6, 'Movilidad reducida'),
(7, 'Condición médica'),
(8, 'Mujer lactante'),
(9, 'Niño pequeño'),
(10, 'Lesión temporal');

INSERT INTO usuario_condicion (usuario_id, condicion_id) VALUES
(1, 3),
(2, 1),
(4, 8),
(6, 2),
(7, 3),
(8, 7),
(9, 4),
(10, 5),
(1, 7),
(4, 9);

INSERT INTO cargo (cargo_id, cargo_nombre) VALUES
(1, 'Asesor de servicio'),
(2, 'Supervisor'),
(3, 'Gerente'),
(4, 'Analista'),
(5, 'Coordinador'),
(6, 'Auxiliar'),
(7, 'Especialista'),
(8, 'Jefe de área'),
(9, 'Consultor'),
(10, 'Técnico');

INSERT INTO departamento (departamento_id, departamento_nombre) VALUES
(1, 'Atención al Cliente'),
(2, 'Operaciones'),
(3, 'Logística'),
(4, 'Administración'),
(5, 'Recursos Humanos'),
(6, 'Sistemas'),
(7, 'Contabilidad'),
(8, 'Ventas'),
(9, 'Marketing'),
(10, 'Consultoría');

INSERT INTO empleado_cargo (empleado_id, cargo_id) VALUES
(1, 1),
(2, 4),
(3, 3),
(4, 2),
(5, 1),
(6, 5),
(7, 1),
(8, 7),
(9, 9),
(10, 6);

INSERT INTO empleado_departamento (empleado_id, departamento_id) VALUES
(1, 1),
(2, 6),
(3, 4),
(4, 2),
(5, 1),
(6, 3),
(7, 1),
(8, 10),
(9, 8),
(10, 5);

INSERT INTO servicio (servicio_id, servicio_nombre, descripcion, estado) VALUES
(1, 'Despacho', 'Servicio de despacho de productos', 'activo'),
(2, 'Entrega de artículos', 'Entrega de productos a domicilio', 'activo'),
(3, 'Recepción de artículos', 'Recepción de productos devueltos', 'activo'),
(4, 'Atención al cliente', 'Asesoría y soporte general', 'activo'),
(5, 'Consultoría', 'Servicio de consultoría especializada', 'activo'),
(6, 'Reclamos', 'Gestión de quejas y reclamos', 'activo'),
(7, 'Información', 'Información general sobre servicios', 'activo'),
(8, 'Pagos', 'Procesamiento de pagos y facturación', 'activo'),
(9, 'Soporte técnico', 'Asistencia técnica especializada', 'activo'),
(10, 'Devoluciones', 'Gestión de devoluciones', 'inactivo');

INSERT INTO turno (turno_id, usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 4, 1, '2025-10-20 00:00:00', '2025-10-20 09:00:00', '2025-10-20 10:00:00', 'completado'),
(2, 2, 1, 3, '2025-10-20 00:00:00', '2025-10-20 10:00:00', '2025-10-20 11:00:00', 'completado'),
(3, 4, 3, 5, '2025-10-21 00:00:00', '2025-10-21 11:00:00', '2025-10-21 12:00:00', 'pendiente'),
(4, 6, 5, 8, '2025-10-21 00:00:00', '2025-10-21 14:00:00', '2025-10-21 15:00:00', 'pendiente'),
(5, 7, 6, 1, '2025-10-22 00:00:00', '2025-10-22 08:00:00', '2025-10-22 09:00:00', 'en_proceso'),
(6, 8, 2, 4, '2025-10-22 00:00:00', '2025-10-22 15:00:00', '2025-10-22 16:00:00', 'pendiente'),
(7, 9, 4, 5, '2025-10-23 00:00:00', '2025-10-23 09:00:00', '2025-10-23 10:00:00', 'pendiente'),
(8, 10, 8, 1, '2025-10-23 00:00:00', '2025-10-23 13:00:00', '2025-10-23 14:00:00', 'cancelado'),
(9, 1, 7, 9, '2025-10-24 00:00:00', '2025-10-24 10:00:00', '2025-10-24 11:00:00', 'pendiente'),
(10, 2, 9, 3, '2025-10-24 00:00:00', '2025-10-24 16:00:00', '2025-10-24 17:00:00', 'pendiente');

INSERT INTO medio (medio_id, nombre) VALUES
(1, 'Correo electrónico'),
(2, 'SMS'),
(3, 'WhatsApp'),
(4, 'Teléfono'),
(5, 'Notificación push'),
(6, 'Telegram'),
(7, 'Correo certificado'),
(8, 'Llamada automática'),
(9, 'App móvil'),
(10, 'Mensaje de voz');

INSERT INTO contacto (contacto_id, usuario_id, medio_id, valor) VALUES
(1, 1, 1, 'juan.perez@email.com'),
(2, 1, 2, '3001234567'),
(3, 2, 1, 'maria.gonzalez@email.com'),
(4, 2, 3, '3109876543'),
(5, 4, 1, 'ana.martinez@email.com'),
(6, 6, 2, '3201112233'),
(7, 7, 4, '3157778899'),
(8, 8, 1, 'carmen.diaz@email.com'),
(9, 9, 3, '3186665544'),
(10, 10, 1, 'sofia.torres@email.com');

INSERT INTO notificacion (notificacion_id, contacto_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 'Bienvenido al sistema ServiLiMar', '2025-10-19 08:00:00', 'enviado'),
(2, 2, 'Su turno ha sido asignado para mañana', '2025-10-19 09:15:00', 'enviado'),
(3, 3, 'Recordatorio: turno mañana 10:00 AM', '2025-10-19 10:30:00', 'enviado'),
(4, 4, 'Su turno está en proceso', '2025-10-20 11:00:00', 'enviado'),
(5, 5, 'Turno completado satisfactoriamente', '2025-10-20 12:00:00', 'enviado'),
(6, 6, 'Confirmación de turno agendado', '2025-10-21 08:30:00', 'enviado'),
(7, 7, 'Su turno ha sido cancelado', '2025-10-21 14:00:00', 'enviado'),
(8, 8, 'Nuevo turno disponible', '2025-10-22 09:00:00', 'pendiente'),
(9, 9, 'Recordatorio de cita próxima', '2025-10-22 15:30:00', 'enviado'),
(10, 10, 'Gracias por usar ServiLiMar', '2025-10-23 10:00:00', 'enviado');
```
