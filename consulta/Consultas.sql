-- Nombre y fecha de ingreso de trabajadores que sean ingenieros y socios con membresıa en al menos dos asociaciones.
select distinct(per.nombre), emp.fechaIngreso
from Empleado emp, 
	 Persona per,
	 AsociacionPersona aso
where emp.IdPersona = per.IdPersona
and   per.IdPersona = aso.IdPersona
and   emp.profesion = 'ingeniero'
and   2 <= (select COUNT(*) from AsociacionPersona where IdPersona = per.IdPersona)



--Nombre y telefonos de los socios que no son trabajadores con m ́as de tres proyectos que no haga parte de otros proyectos.
select nombre, telContacto
from Persona
where IdPersona =( select IdPersona
				   from( select per.IdPersona
				   		 from Persona per,  
				   		 	  PersonaProyecto perpro,
				   		 	  Proyecto pro
				   		 where perpro.IdPersona = per.IdPersona 
				   		 and per.IdPersona not in (select IdPersona from Empleado)
				   		 and perpro.IdProyecto = pro.IdProyecto
				   		 and pro.IdProyectoPadre is null) proy
				   group by IdPersona having COUNT(*) >= 3)
