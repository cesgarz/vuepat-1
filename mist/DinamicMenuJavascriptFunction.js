getMenuJson (hasChilds = false, menuPadre = null) {

      //HANDLES WHEN MENU HAS CHILDS
      if(hasChilds){

        for(menu of this.menus) {
          
          menuJson = '';
          isParent = false;


          for(menuChild of this.menus){

            if(menu.id_menu == menuChild.id_padre) {

              isParent = true;
              break;

            }

          }

          if (menuPadre.id_menu == menu.id_padre) {

            if (isParent) {

              menuJson += '{ "icon" : "' + menu.nb_icon + '", "text": "' + menu.nb_menu + '", "children": [ ';

              menuJson += getMenuJson(true, menu);

              menuJson += '], },';

              return menuJson;

            }else {

              menuJson += '{ "icon": "' + menu.nb_icon + '", "text": "' + menu.nb_menu + '", "href": "' + menu.tx_ruta + '" },';

              return menuJson;
            }

          }//END IF


        }//END FOREACH

      }else{

        menuJson = "[";
        isParent = false;

        for(menu in this.menus){

         for(menuChild in this.menus){

            if(menu.id_menu == menuChild.id_padre) {

              isParent = true;
              break;

            }

          }

          if(menu.id_padre == 0){
        
            menuJson += '{ "heading": "' + menu.nb_menu + '" },';
        
          }else if (isParent) {

            menuJson += '{ "icon" : "' + menu.nb_icon + '", "text": "' + menu.nb_menu + '", "children": [ ';

            menuJson += getMenuJson(true, menu);

            menuJson += '], },';

          }else {

            menuJson += '{ "icon": "' + menu.nb_icon + '", "text": "' + menu.nb_menu + '", "href": "' + menu.tx_ruta + '" },';

          }

        }//END FOREACH

        menuJson += ']';
        return menuJson;

      }//END ELSE HAS CHILD

    }//END FUNCTION GETMENUJSON


//MENU ESTATICO
//provisionalmente mientras se arreglan los  permisos
      /*if(this.$store.getters.user)
      {
        if(this.$store.getters.user.id_usuario == 1)
      {
          this.items = [

            { heading: 'Menu' },
            { icon: 'home', text: 'Inicio', href: '/home' },
            { heading: 'Datos Maestros' },
            { icon: 'assignment', text: 'Datos Maestros',
              children:
              [
                { icon: 'star_border', text: 'Misiones', href: '/mision' },
                { icon: 'accessible', text: 'Discapacidad', href: '/discapacidad' },
                { icon: 'directions_run', text: 'Motivos de Viaje', href: '/motivo' },
                { icon: 'device_hub', text: 'Sector', href: '/sector' },
              ],
            },
            { heading: 'Reportes' },
            { icon: 'description', text: 'Reportes',
              children:
              [
                { icon: 'description', text: 'Personas', href: '/reports.persona' },
                { icon: 'description', text: 'Bitacora', href: '/reports.bitacora' },
              ], 
            },
            { heading: 'Administracion' },
            { icon: 'person', text: 'Usuarios', href: '/usuario' },
          ]
      }
      else
      {
        this.items = [

          { heading: 'Menu' },
          { icon: 'assignment_ind', text: 'Registro', href: '/home' },
          { icon: 'assignment', text: 'Planilla', href: '/planilla' },      
        ]
      }
      }*/