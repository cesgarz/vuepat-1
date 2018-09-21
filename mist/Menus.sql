
INSERT INTO public.menu (nb_menu, nb_icon, tx_ruta, id_padre, id_status, id_usuario, fe_creado, fe_actualizado)
VALUES('Sector', 'device_hub', '/sector', 8, 1, 1, '2018-08-23 11:04:24', '2018-08-23 11:04:24');

UPDATE public.menu SET nb_menu = 'Menu' WHERE id_menu = 1;

INSERT INTO public.rol_usuario (id_usuario, id_rol, id_status, fe_creado, fe_actualizado)
VALUES(1,1,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54');

ALTER TABLE public.rol_menu
ADD COLUMN orden int4;

INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,1,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 1);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,2,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 3);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,3,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 9);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,4,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 13);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(2,5,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 2);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(2,6,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 3);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,7,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 4);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,8,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 5);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,9,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 6);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,10,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 7);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,11,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 8);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,12,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 9);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,13,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 10);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,14,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 11);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,15,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 12);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,16,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 13);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,17,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 14);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,18,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 15);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(1,19,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 16);
INSERT INTO public.rol_menu (id_rol, id_menu, id_status, fe_creado, fe_actualizado, orden)
VALUES(2,20,1, '2018-08-30 12:13:54', '2018-08-30 12:13:54', 17);
