INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('andres','$2a$10$AkdYKj34k1fBL3ZOBc4eHeFue8BzrGkn3t9P3BxGPRvnoM6Oy1qiq',true, 'Pedro', 'Castro','castro98@gmailcom');
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('admin','$2a$10$UFd5VnjdXgOLkkNiMAMVLONiiQVP9V5NZgBK.0g5iodbdgI/NogUW',true, 'Luis', 'Salas','salas.1988@gmail.com');
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('cris24','$2a$10$7bj4vmI7ij2MzcUncDAUvudp9NdzUE0NZUm44gg0ukEYvR6gzNv8i',true, 'Cristian', 'Gaona','crgaonas24@gmail.com');
INSERT INTO roles (nombre) VALUES ('ROLE_USER');
INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (1, 1);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (2, 2);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (3, 2);