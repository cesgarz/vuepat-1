<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//MODELS
use App\Models\RolUsuario;
use App\Models\RolMenu;
use App\Models\Menu;

class MenuBuilderController extends Controller
{
    public function getMenuByUsuario($id_usuario)
    {

        $rolesUsuario = RolUsuario::select('id_rol')->where('id_usuario', '=', $id_usuario)->where('id_status', '=', 1)->get();

        $menusArray = array();
        $counter = 0;

        foreach($rolesUsuario as $rolUsuario){

				  $menus = RolMenu::select('id_menu')
									->where('id_rol', '=', $rolUsuario->id_rol)
									->where('id_status', '=', 1)
                  ->orderBy('orden', 'asc')
									->get();

  				foreach($menus as $menu){

            if($counter > 0){
              if($menu->id_menu != $menusArray[$counter - 1]->id_menu){
                array_push($menusArray, $menu);
                $counter ++;
              }
            }else {
                array_push($menusArray, $menu);
                $counter ++;
              }

            }		
	        
        }

        $counter = 0;
        $menus = array();

        foreach ($menusArray as $menu) {
        	
        	$menus[$counter] = Menu::select('id_menu', 'nb_menu', 'nb_icon', 'tx_ruta', 'id_padre')
        					->where('id_menu', '=', $menu->id_menu)
        					->where('id_status', '=', 1)
        					->get();

        	$counter ++;
        }
       
        $menuJson = $this->getMenuJson($menus, false, null);

        return $menuJson;

    }

    public function getMenuJson($menus = null, $hasChilds = false, $menuPadre = null)
    {

    	//HANDLES WHEN MENU HAS CHILDS
      if($hasChilds){

        foreach($menus as $menu) {
          
          $menuJson = '';
          $isParent = false;
          $menuCounter = 0;


          foreach($menus as $menuChild){

            if($menu[0]->id_menu == $menuChild[0]->id_padre) {

              $isParent = true;
              break;

            }

          }

          if ($menuPadre[0]->id_menu == $menu[0]->id_padre) {

            if ($isParent) {

              $menuJson .= '{ "icon" : "' . $menu[0]->nb_icon . '", "text": "' . $menu[0]->nb_menu . '", "children": [ ';

              $menuJson .= $this->getMenuJson($menus, true, $menu);

               $isParent = false;

               if($menuCounter < count($menus){

                $menuJson .= '] }';
               
               }else{
               
                $menuJson .= '] },';
               
               }

            }else {

              $menuJson .= '{ "icon": "' . $menu[0]->nb_icon . '", "text": "' . $menu[0]->nb_menu . '", "href": "' . $menu[0]->tx_ruta;

              if($menuCounter < count($menus){

                $menuJson .= '" }';
               
               }else{
               
                $menuJson .= '" },';
               
               }

            }

          }//END IF

          $menuCounter++;
        }//END FOREACH

        return $menuJson;

      }else{

        $menuJson = "[";
        $isParent = false;
        $menuCounter = 0;

        foreach($menus as $menu){

          if(isset($menu[0]->id_padre) || $menu[0]->id_padre != ''){
            continue;
          }

         foreach($menus as $menuChild){

            if($menu[0]->id_menu == $menuChild[0]->id_padre) {

              $isParent = true;
              break;

            }

          }

          if($menu[0]->id_padre == 0 && (!isset($menu[0]->tx_ruta) || ($menu[0]->tx_ruta == '')){
            
            $menuJson .= '{ "heading": "' . $menu[0]->nb_menu;

            if($menuCounter < count($menus){

              $menuJson .= '" }';
               
            }else{
               
              $menuJson .= '" },';
               
            }
        
          }else if($menu[0]->id_padre == 0 && isset($menu[0]->tx_ruta)) {

            $menuJson .= '{ "icon": "' . $menu[0]->nb_icon . '", "text": "' . $menu[0]->nb_menu . '", "href": "' . $menu[0]->tx_ruta . '" },';

          }else if ($isParent) {

            $menuJson .= '{ "icon" : "' . $menu[0]->nb_icon . '", "text": "' . $menu[0]->nb_menu . '", "children": [ ';

            $menuJson .= $this->getMenuJson($menus, true, $menu);

            $isParent = false;

            if($menuCounter < count($menus){

              $menuJson .= '] },';
               
            }else{
               
              $menuJson .= '] }';
               
            }

          }

          $menuCounter++;

        }//END FOREACH

        $menuJson .= ']';
        return $menuJson;

      }//END ELSE HAS CHILD

    }//END FUNCTION



}//END CLASS
