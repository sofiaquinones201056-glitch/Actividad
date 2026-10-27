CREATE TABLE public.ciudades (
	ciudad_id serial4 NOT NULL,
	nombre varchar(100) NULL,
	estado_id int4 NULL,
	CONSTRAINT ciudades_ciudad_id_not_null NOT NULL ciudad_id,
	CONSTRAINT ciudades_nombre_estado_id_key UNIQUE (nombre, estado_id),
	CONSTRAINT ciudades_pkey PRIMARY KEY (ciudad_id),
	CONSTRAINT ciudades_estado_id_fkey FOREIGN KEY (estado_id) REFERENCES public.estados(estado_id)
);
CREATE TABLE public.estados (
	estado_id serial4 NOT NULL,
	nombre varchar(100) NULL,
	pais varchar(50) DEFAULT 'México'::character varying NULL,
	CONSTRAINT estados_estado_id_not_null NOT NULL estado_id,
	CONSTRAINT estados_nombre_key UNIQUE (nombre),
	CONSTRAINT estados_pkey PRIMARY KEY (estado_id)
);


INSERT INTO public.estados (nombre,pais) VALUES
	 ('Veracruz','México'),
	 ('Guanajuato','México'),
	 ('Sonora','México'),
	 ('Jalisco','México'),
	 ('Guerrero','México'),
	 ('Coahuila','México'),
	 ('Baja California','México'),
	 ('San Luis Potosí','México'),
	 ('Puebla','México'),
	 ('Yucatán','México');
INSERT INTO public.estados (nombre,pais) VALUES
	 ('CDMX','México'),
	 ('Chihuahua','México'),
	 ('Nuevo León','México'),
	 ('Querétaro','México'),
	 ('Sinaloa','México'),
	 ('Michoacán','México'),
	 ('Estado de México','México'),
	 ('Aguascalientes','México');

INSERT INTO public.ciudades (nombre,estado_id) VALUES
	 ('Veracruz',1),
	 ('León',2),
	 ('Hermosillo',3),
	 ('Zapopan',4),
	 ('Guadalajara',4),
	 ('Acapulco',5),
	 ('Saltillo',6),
	 ('Tijuana',7),
	 ('Mexicali',7),
	 ('San Luis Potosí',8);
INSERT INTO public.ciudades (nombre,estado_id) VALUES
	 ('Puebla',9),
	 ('Mérida',10),
	 ('Ciudad de México',11),
	 ('Chihuahua',12),
	 ('Juárez',12),
	 ('Monterrey',13),
	 ('Querétaro',14),
	 ('Culiacán',15),
	 ('Morelia',16),
	 ('Aguascalientes',20);



update clientes c set ciudad_id =1 where ciudad ='Veracruz';

update clientes c set ciudad_id =2 where ciudad ='León';

update clientes c set ciudad_id =3 where ciudad ='Hermosillo';

update clientes c set ciudad_id =4 where ciudad ='Zapopan';

update clientes c set ciudad_id =5 where ciudad ='Guadalajara';

update clientes c set ciudad_id =6 where ciudad ='Acapulco';

update clientes c set ciudad_id =7 where ciudad ='Saltillo';

update clientes c set ciudad_id =8 where ciudad ='Tijuana';

update clientes c set ciudad_id =9 where ciudad ='Mexicali';

update clientes c set ciudad_id =10 where ciudad ='San Luis Potosí';

update clientes c set ciudad_id =11 where ciudad ='Puebla';

update clientes c set ciudad_id =12 where ciudad ='Mérida';

update clientes c set ciudad_id =13 where ciudad ='Ciudad de México';

update clientes c set ciudad_id =14 where ciudad ='Chihuahua';

update clientes c set ciudad_id =15 where ciudad ='Juárez';

update clientes c set ciudad_id =16 where ciudad ='Monterrey';

update clientes c set ciudad_id =17 where ciudad ='Querétaro';

update clientes c set ciudad_id =18 where ciudad ='Culiacán';

update clientes c set ciudad_id =19 where ciudad ='Morelia';

update clientes c set ciudad_id =20 where ciudad ='Aguascalientes';



select * from clientes;

select clientes.nombre ,c.ciudad_id, c.nombre , e.nombre  from clientes 
join ciudades c on clientes.ciudad_id = c.ciudad_id  
join estados e on e.estado_id = c.estado_id;

alter table clientes drop column estado;
alter table clientes drop column ciudad;