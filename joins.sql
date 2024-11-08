-- Active: 1730684071005@@127.0.0.1@5432@desafio3_nahara_gutierrez_123

-- respuesta pregunta 2:
SELECT
    U.nombre,
    U.email,
    P.título AS título_del_post,
    P.contenido AS contenido_del_post
FROM usuarios U
    LEFT JOIN posts P ON U.id = P.usuario_id;

-- respuesta pregunta 3:
SELECT
    P.id AS id_post,
    P.título AS título_post,
    P.contenido AS contenido_post
FROM usuarios U
    INNER JOIN posts P ON U.id = P.usuario_id
WHERE
    U.rol = 'administrador';

-- respuesta pregunta 4:
SELECT
    U.id AS id_usuario,
    U.email AS email_usuario,
    count(P.id) AS cantidad_posts
FROM usuarios U
    LEFT JOIN posts P ON U.id = P.usuario_id
GROUP BY
    U.id,
    U.email;

-- respuesta pregunta 5:
SELECT
    U.email AS email_usuario_mayor_cantidad_post
FROM usuarios U
    LEFT JOIN posts P ON U.id = P.usuario_id
GROUP BY
    U.email
ORDER BY count(P.id) DESC
LIMIT 1;

-- respuesta pregunta 6:
SELECT
    U.nombre AS nombre_usuario,
    MAX(P.fecha_creacion) AS fecha_ultimo_post
FROM usuarios U
    INNER JOIN posts P ON U.id = P.usuario_id
GROUP BY
    U.nombre
ORDER BY MAX(P.fecha_creacion) DESC;

-- respuesta pregunta 7:
SELECT
    P.título AS título_post,
    P.contenido AS contenido_post,
    count(C.id) AS cantidad_comentarios
FROM posts P
    LEFT JOIN comentarios C ON P.id = C.post_id
GROUP BY
    P.título,
    P.contenido
ORDER BY count(C.id) DESC
LIMIT 1;

-- respuesta pregunta 8:
SELECT
    P.título AS titulo_post,
    P.contenido AS contenido_post,
    C.contenido AS contenido_comentario,
    US.email AS email_usuario
FROM
    posts P
    INNER JOIN usuarios U ON P.usuario_id = U.id
    INNER JOIN comentarios C ON P.id = C.post_id
    INNER JOIN usuarios US ON C.usuario_id = US.id;

-- respuesta pregunta 9:
SELECT
    U.id AS id_usuario,
    U.email AS email_usuario,
    MAX(C.fecha_creacion) AS fecha_ultimo_comentario
FROM comentarios C
    LEFT JOIN usuarios U ON C.usuario_id = U.id
GROUP BY
    U.id,
    U.email;

-- respuesta pregunta 10:
SELECT U.email
FROM usuarios U
    LEFT JOIN comentarios C ON U.id = C.usuario_id
WHERE
    C.id IS NULL