-- FUNCIONES - FUNCION CHAR_LENGTH(MYSQL) LEN(SQL SERVER) CUENTA LA CANTIDAD DE CARATERES INCLUYENDO LOS ESPACIOS ENTRE PALABRAS
-- EXISTEN MUCHA SFUNCIONES

/*
SELECT *, LEN(TITULO_CURSO) AS LARGO FROM CURSOS
ORDER BY LARGO
*/

-- FUNCION PARA CONCATENAR CONCAT SELECCIONAMOS EL NOMBRE DE LAS COLUMNAS SEPARADAS POR , DEBEMOS INCLUIR ' ' PARA HACER DE SEPARADOR

/*
SELECT * ,CONCAT(NOMBRE,' ',APELLIDO) AS NOMBRE_COMPLETO FROM ESTUDIANTES
ORDER BY NOMBRE_COMPLETO
*/

-- LA FUNCION ROUND, YA LA ANOTE PERO ACA LA DETALLO MEJOR, SIRVE PARA REDONDEAR HACIA ARRIBA LOS DECIMALES QUE TENGAMOS

/*
SELECT *, ROUND(DURACION_HORAS,0) AS REDONDEO_HORAS FROM CURSOS
*/

-- LAS FUNCIONES UPPER Y LOWER MODIFICAN LAS LETRAS DE MAYUSCULAS A MINUSCULAS Y VICEVERSA
/*

SELECT *, UPPER(TITULO_CURSO) AS TITUTLO_MAYUS, LOWER(ID_IDIOMA) AS IDIOMA_MIN FROM CURSOS
*/

-- FUNCION CASE SIRVE PARA SEGMENTAR MEJRO LA INFORMACION SE SEGMENTA ANTES DEL FROM
-- ESTABL?ECEMSO LAS CONDCIONES DE QUE PASA SI CON WHEN COLUMNA X ESTABLECEMOS LAS CONDICONES Y UQE DEBE HACER CUANDOI SE DEN CON THEN
-- FINALIZAMOS CON LA CLAUSULA ELSE SINO SE DA NINGUNA DE LAS CONDICIONES QUE HACEMOS CIERRA CON 'END'




SELECT *, ID_CURSO, PRECIO =
CASE
	WHEN PRECIO  = 0 THEN 'CUPON'
	WHEN PRECIO < 20 THEN 'BARATO'
	WHEN PRECIO >= 20 AND  PRECIO <= 50 THEN 'MEDIO'
	WHEN PRECIO >= 50 AND PRECIO <= 100 THEN 'CARO'
	ELSE 'SUPER CARO'
	END 
FROM COMPRAS
ORDER BY COMPRAS.PRECIO DESC
	
-- SE PUEDE INGRESAR UN BETWEEN 

SELECT *, ID_CURSO, PRECIO =
CASE
	WHEN PRECIO  = 0 THEN 'CUPON'
	WHEN PRECIO < 20 THEN 'BARATO'
	WHEN PRECIO BETWEEN 20 AND 50 THEN 'MEDIO'
	WHEN PRECIO BETWEEN 50 AND 100THEN 'CARO'
	ELSE 'SUPER CARO'
	END 
FROM COMPRAS
ORDER BY COMPRAS.PRECIO DESC