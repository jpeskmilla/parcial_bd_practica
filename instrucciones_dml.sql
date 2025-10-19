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

INSERT INTO tipo_usuario (tipo_usuario_id, nombre) VALUES
(1, 'Cliente'),
(2, 'Empleado'),
(3, 'Proveedor'),
(4, 'Administrador'),
(5, 'Supervisor'),
(6, 'Visitante'),
(7, 'Contratista'),
(8, 'Gerente'),
(9, 'Analista'),
(10, 'Operario');

INSERT INTO usuario (usuario_id, nombre, apellido, tipo_usuario_id, ciudad_id) VALUES
(1, 'Juan', 'Pérez', 1, 1),
(2, 'María', 'González', 2, 1),
(3, 'Carlos', 'Rodríguez', 3, 2),
(4, 'Ana', 'Martínez', 1, 3),
(5, 'Luis', 'López', 4, 1),
(6, 'Laura', 'Hernández', 2, 4),
(7, 'Pedro', 'García', 1, 5),
(8, 'Carmen', 'Díaz', 5, 2),
(9, 'Jorge', 'Ramírez', 1, 6),
(10, 'Sofía', 'Torres', 2, 3);

INSERT INTO condicion_especial (condicion_id, nombre) VALUES
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
(4, 1),
(7, 2),
(9, 3),
(1, 7),
(4, 8),
(7, 6),
(9, 4),
(2, 5),
(6, 10);

INSERT INTO departamento (departamento_id, nombre) VALUES
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

INSERT INTO cargo (cargo_id, nombre) VALUES
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

INSERT INTO empleado (empleado_id, usuario_id) VALUES
(1, 2),
(2, 5),
(3, 6),
(4, 8),
(5, 10),
(6, 3),
(7, 1),
(8, 4),
(9, 7),
(10, 9);

INSERT INTO empleado_cargo (empleado_id, cargo_id) VALUES
(1, 1),
(2, 3),
(3, 1),
(4, 2),
(5, 1),
(6, 4),
(7, 6),
(8, 5),
(9, 7),
(10, 1);

INSERT INTO empleado_departamento (empleado_id, departamento_id) VALUES
(1, 1),
(2, 4),
(3, 1),
(4, 2),
(5, 1),
(6, 3),
(7, 5),
(8, 6),
(9, 10),
(10, 8);

INSERT INTO servicio (servicio_id, nombre, descripcion, estado) VALUES
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
(1, 1, 4, 1, '2025-10-20', 9, 10, 'completado'),
(2, 4, 1, 3, '2025-10-20', 10, 11, 'completado'),
(3, 7, 3, 5, '2025-10-21', 11, 12, 'pendiente'),
(4, 9, 5, 9, '2025-10-21', 14, 15, 'pendiente'),
(5, 1, 6, 1, '2025-10-22', 8, 9, 'en_proceso'),
(6, 4, 2, 3, '2025-10-22', 15, 16, 'pendiente'),
(7, 7, 4, 5, '2025-10-23', 9, 10, 'pendiente'),
(8, 9, 8, 1, '2025-10-23', 13, 14, 'cancelado'),
(9, 1, 7, 9, '2025-10-24', 10, 11, 'pendiente'),
(10, 4, 9, 3, '2025-10-24', 16, 17, 'pendiente');

INSERT INTO medio_notificacion (medio_id, nombre) VALUES
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

INSERT INTO contacto_usuario (contacto_id, usuario_id, medio_id, valor) VALUES
(1, 1, 1, 'juan.perez@email.com'),
(2, 1, 2, '3001234567'),
(3, 4, 1, 'ana.martinez@email.com'),
(4, 4, 3, '3109876543'),
(5, 7, 1, 'pedro.garcia@email.com'),
(6, 7, 2, '3201112233'),
(7, 9, 4, '3157778899'),
(8, 2, 1, 'maria.gonzalez@email.com'),
(9, 6, 3, '3186665544'),
(10, 10, 1, 'sofia.torres@email.com');

INSERT INTO notificacion (notificacion_id, contacto_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 'Bienvenido al sistema ServiLiMar', '2025-10-19 08:00:00', 'enviado'),
(2, 2, 'Su turno ha sido asignado para mañana', '2025-10-19 09:15:00', 'enviado'),
(3, 3, 'Recordatorio: turno mañana 10:00 AM', '2025-10-19 10:30:00', 'leido'),
(4, 4, 'Su turno está en proceso', '2025-10-20 11:00:00', 'enviado'),
(5, 5, 'Turno completado satisfactoriamente', '2025-10-20 12:00:00', 'enviado'),
(6, 6, 'Confirmación de turno agendado', '2025-10-21 08:30:00', 'recibido'),
(7, 7, 'Su turno ha sido cancelado', '2025-10-21 14:00:00', 'enviado'),
(8, 8, 'Nuevo turno disponible', '2025-10-22 09:00:00', 'pendiente'),
(9, 9, 'Recordatorio de cita próxima', '2025-10-22 15:30:00', 'enviado'),
(10, 10, 'Gracias por usar ServiLiMar', '2025-10-23 10:00:00', 'enviado');