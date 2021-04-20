-- Usuario y estructura y datos ya añadidos
-- Capturar esquema E-R
/*  1. Obtener los nombres y salarios de los empleados con más de 1000 euros
 de salario por orden alfabético. */
SELECT (nombre, ape1, ap2, salario)
FROM empleado
WHERE (salario > 1000)
ORDER BY (nombre, ape1, ape2);
/*  2. Obtener el nombre de los empleados cuya comisión es superior al 20% de 
 su salario.*/
SELECT (nombre, ape1, ap2)
FROM empleado
WHERE (com > salario * 0.2);
/*  3. Obtener el código de empleado, código de departamento, nombre y sueldo 
 total en pesetas de aquellos empleados cuyo sueldo total (salario más 
 comisión) supera los 1800 euros. Presentarlos ordenados por código de 
 departamento y dentro de éstos por orden alfabético. */
SELECT (
		codemple,
		coddpto,
		nombre,
		ape1,
		ap2,
		salario * pts AS sueldoPts,
	)
FROM empleado
WHERE ((salario + com)) > 1800
)
ORDER BY (coddpto, nombre, ape1, ape2);
/*  4. Obtener por orden alfabético los nombres de empleados cuyo salario 
 igualen o superen en más de un 5% al salario de la empleada 
 ‘MARIA JAZMIN’.*/
SELECT (nombre, ape1, ap2, salario * pts AS sueldoPts)
FROM empleado
WHERE (
		salario >= (
			SELECT salario
			FROM empleado
			WHERE (
					nombre LIKE 'MARIA'
					AND ape1 LIKE 'JAZMIN'
				)
		) * 1.05
	);
/*  5. Obtener una listado ordenado por años en la empresa con los nombres, y 
 apellidos de los empleados y los años de antigüedad en la empresa. */
SELECT (
		nombre,
		ape1,
		ape2,
		fechaingreso - fechaAhora AS antigüedad
	)
FROM empleado
ORDER BY (antigüedad);
/*  6. Obtener el nombre de los empleados que trabajan en un departamento con 
 presupuesto superior a 50.000 euros. Hay que usar predicado cuantificado */
SELECT (
		nombre,
		ape1,
		ape2,
		(fechaingreso - fechaAhora) AS antigüedad
	)
FROM empleado
ORDER BY (antigüedad);

/* 7. Obtener los nombres y apellidos de empleados que más cobran en la empresa.
 Considerar el salario más la comisión.  */
SELECT (nombre, ape1, ape2)
FROM empleado ORDER DESC BY (salario + comision);
/* 8. Obtener en orden alfabético los nombres de empleado cuyo salario es 
 inferior al mínimo de los empleados del departamento 1. */
SELECT (nombre, ape1, ape2)
FROM empleado
WHERE (
		salario < (
			SELECT MIN(salario)
			FROM empleados
			WHERE depto = 1
		)
	)
ORDER BY (salario + comision);



/* 9  Obtener los nombre de empleados que trabajan en el departamento del cuál
 es jefe el empleado con código 1. */
/* 10 Obtener los nombres de los empleados cuyo primer apellido empiece por las 
 letras p, q, r, s. */
/* 11 Obtener los empleados cuyo nombre de pila contenga el nombre JUAN. */
/* 12 Obtener los nombres de los empleados que viven en ciudades en las que 
 hay algún centro de trabajo */
/* 13 Obtener el nombre del jefe de departamento que tiene mayor salario de 
 entre los jefes de departamento. */
/* 14 Obtener en orden alfabético los salarios y nombres de los empleados cuyo 
 salario sea superior al 60% del máximo salario de la empresa. */
/* 15 Obtener en cuántas ciudades distintas viven los empleados */
/* 16 El nombre y apellidos del empleado que más salario cobra */
/* 17 Obtener las localidades y número de empleados de aquellas en las que 
 viven más de 3 empleados */
/* 18 Obtener para cada departamento cuántos empleados trabajan, la suma de 
 sus salarios y la suma de sus comisiones para aquellos departamentos en 
 los que hay algún empleado cuyo salario es superior a 1700 euros. */
/* 19 Obtener el departamento que más empleados tiene */
/* 20 Obtener los nombres de todos los centros y los departamentos que se 
 ubican en cada uno,así como aquellos centros que no tienen 
 departamentos */
/* 21 Obtener el nombre del departamento de más alto nivel, es decir, aquel 
 que no depende de ningún otro. */
/* 22 Obtener todos los departamentos existentes en la empresa y los empleados 
 (si los tiene) que pertenecen a él. */
/* 23 Obtener un listado en el que aparezcan todos los departamentos 
 existentes  y el departamento del cual depende,si depende de alguno. */
/* 24 Obtener un listado ordenado alfabéticamente donde aparezcan los nombres 
 de los empleados y a continuación el literal "tiene comisión" si la 
 tiene, y "no tiene comisión" si no la tiene. */
/* 25 Obtener un listado de las localidades en las que hay centros y no vive 
 ningún empleado ordenado alfabéticamente. */
/* 26 Obtener un listado de las localidades en las que hay centros y además 
 vive al menos un empleado ordenado alfabéticamente. */
/* 27 Esta cuestión puntúa por 2. Se desea dar una gratificación por navidades 
 en función de la antigüedad en la empresa siguiendo estas pautas:
 Si lleva entre 1 y 5 años, se le dará 100 euros
 Si lleva entre 6 y 10 años, se le dará 50 euros por año
 Si lleva entre 11 y 20 años, se le dará 70 euros por año
 Si lleva más de 21 años, se le dará 100 euros por año */
/* 28 Obtener un listado de los empleados,ordenado alfabéticamente,indicando 
 cuánto le corresponde de gratificación. */
/* 29 Obtener a los nombres, apellidos de los empleados que no son jefes de 
 departamento. */