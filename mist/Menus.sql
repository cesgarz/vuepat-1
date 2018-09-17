ALTER TABLE public.menu
ADD COLUMN orden int4;

INSERT INTO public.menu (nb_menu, nb_icon, tx_ruta, id_padre, id_status, id_usuario, fe_creado, fe_actualizado, orden)
VALUES('Sector', 'device_hub', '/sector', 8, 1, 1, '2018-08-23 11:04:24', '2018-08-23 11:04:24', 9);

UPDATE public.menu SET nb_menu = 'Menu' WHERE id_menu = 1;
UPDATE public.menu SET orden = 1 WHERE id_menu = 1;
UPDATE public.menu SET orden = 2 WHERE id_menu = 5;
UPDATE public.menu SET orden = 3 WHERE id_menu = 2;
UPDATE public.menu SET orden = 4 WHERE id_menu = 8;
UPDATE public.menu SET orden = 5 WHERE id_menu = 9;
UPDATE public.menu SET orden = 6 WHERE id_menu = 10;
UPDATE public.menu SET orden = 7 WHERE id_menu = 11;
UPDATE public.menu SET orden = 8 WHERE id_menu = 12;

INSERT INTO public.rol_usuario (id_usuario, id_rol, id_status, fe_creado, fe_actualizado)
VALUES(1,1,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');

INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,1,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,2,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,3,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,4,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,5,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,6,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,7,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,8,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,9,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,10,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,11,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,12,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado)
VALUES(1,13,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');

UPDATE public.menu SET nb_menu = 'Menu' WHERE id_menu = 1;
UPDATE public.menu SET orden = 1 WHERE id_menu = 1;
UPDATE public.menu SET orden = 2 WHERE id_menu = 5;
UPDATE public.menu SET orden = 3 WHERE id_menu = 2;
UPDATE public.menu SET orden = 4 WHERE id_menu = 8;
UPDATE public.menu SET orden = 5 WHERE id_menu = 9;
UPDATE public.menu SET orden = 6 WHERE id_menu = 10;
UPDATE public.menu SET orden = 7 WHERE id_menu = 11;
UPDATE public.menu SET orden = 8 WHERE id_menu = 12;
