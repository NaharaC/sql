-- Active: 1730684071005@@127.0.0.1@5432@desafio3_nahara_gutierrez_123

-- respuesta pregunta 1:
CREATE TABLE usuarios (
    id SERIAL,
    email VARCHAR(30),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    rol VARCHAR
);

INSERT INTO
    usuarios (email, nombre, apellido, rol)
VALUES (
        'juan.perez@gmail.com',
        'Juan',
        'Pérez',
        'usuario'
    ),
    (
        'maria.lopez@gmail.com',
        'María',
        'López',
        'usuario'
    ),
    (
        'daniel.quinteros@gmail.com',
        'Daniel',
        'Quinteros',
        'administrador'
    ),
    (
        'sara.gutierrez@gmail.com',
        'Sara',
        'Gutiérrez',
        'usuario'
    ),
    (
        'pablo.torres@gmail.com',
        'Pablo',
        'Torres',
        'administrador'
    );

CREATE TABLE posts (
    id SERIAL,
    título VARCHAR,
    contenido TEXT,
    fecha_creacion TIMESTAMP,
    fecha_actualizacion TIMESTAMP,
    destacado BOOLEAN,
    usuario_id BIGINT
);

INSERT INTO
    posts (
        título,
        contenido,
        fecha_creacion,
        fecha_actualizacion,
        destacado,
        usuario_id
    )
VALUES (
        'titulo del primer post',
        'contenido del primer post',
        '2024/11/03',
        '2024/11/04',
        TRUE,
        3
    ),
    (
        'titulo del segundo post',
        'contenido del segundo post',
        '2024/10/06',
        '2024/11/01',
        TRUE,
        3
    ),
    (
        'titulo del tercer post',
        'contenido del tercer post',
        '2024/08/06',
        '2024/09/07',
        FALSE,
        2
    ),
    (
        'titulo del cuarto post',
        'contenido del cuarto post',
        '2023/11/09',
        '2024/01/12',
        FALSE,
        4
    ),
    (
        'titulo del quinto post',
        'contenido del quinto post',
        '2024/05/15',
        '2024/06/20',
        FALSE,
        NULL
    );

CREATE TABLE comentarios (
    id SERIAL,
    contenido VARCHAR,
    fecha_creacion TIMESTAMP,
    usuario_id BIGINT,
    post_id BIGINT
)

INSERT INTO
    comentarios (
        contenido,
        fecha_creacion,
        usuario_id,
        post_id
    )
VALUES (
        'contenido comentario uno',
        '2024/12/02',
        1,
        1
    ),
    (
        'contenido comentario dos',
        '2024/12/15',
        2,
        1
    ),
    (
        'contenido comentario tres',
        '2024/12/03',
        3,
        1
    ),
    (
        'contenido comentario cuatro',
        '2024/11/14',
        1,
        2
    ),
    (
        'contenido comentario cinco',
        '2024/12/18',
        2,
        2
    );