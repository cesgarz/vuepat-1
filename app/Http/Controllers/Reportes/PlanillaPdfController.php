<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use \App\Models\Persona;
use \App\Models\Vivienda;
use \App\Models\Pais;
use LaravelQRCode\Facades\QRCode;



class PlanillaPdfController extends Controller
{
    private $fpdf;
    private $directoryPath = './img/qr/';
    private $qrImageName   = 'temp.png';
    private $timeZone      = 'America/Caracas';

    function __construct()
    {
        $this->fpdf = app('FPDF');
        date_default_timezone_set($this->timeZone);
	}
	
    function index(){

    	//GET AUTHENTICATED USER
    	$user = \Auth::user();

    	//CHECK IF $user EXISTS TO AVOID ERRORS
    	if(isset($user)){

    		//GET PERSON BY USER	
    		$persona = Persona::with(['estadoCivil:id_estado_civil,nb_estado_civil', 'personaDiscapacidad', 'vivienda'])
                              ->where('id_usuario', $user->id_usuario)
                              ->where('id_parentesco',  99)
                              ->first();

            //CHECK IF $persona EXISTS TO AVOID ERRORS
            if(!isset($persona)){
				
				exit('Aun no ha llenado los datos del Registro favor ir a la Seccion de registro ');	
				
			}

    	}else{

    		exit('Aun no ha llenado los datos del Registro favor ir a la Seccion de registro ');
    	
    	}

    	//GET VIVIENDA BY USER
        $vivienda = Vivienda::with(['tipoVivienda:id_tipo_vivienda,nb_tipo_vivienda'])
                              ->where('id_usuario', $user->id_usuario)
                              ->where('id_ubicacion', 2)
                              ->first();

        if (!issed($vivienda)) {

        	exit('Aun no ha llenado los datos del Registro favor ir a la Seccion de registro ');

        }

        //GET PAIS BY VIVIENDA
        $pais = Pais::select('nb_pais')
	                      ->where('co_pais', $vivienda->co_pais)
	                      ->first();

	    if (!issed($pais)) {

        	exit('Aun no ha llenado los datos del Registro favor ir a la Seccion de registro ');
        	
        }

	    //GET GENERATED CODE IMAGE ROUTE
        $qrRoute = $this->getQRCode($user, $persona, $vivienda, $pais);
    		
		$this->fpdf->AddPage('P', 'Letter');
		$this->fpdf->SetMargins(15,25,15);
		$this->fpdf->SetAutoPageBreak(true , 25);
		
		$this->Header($qrRoute);
		
		$this->getDatosReportePDF($persona, $vivienda, $pais);

		$this->Footer();
        
        $headers=['Content-Type'=>'application/pdf'];

        //DELETES TEMPORAL QR CODE IMAGE GENERATED PREVIOUSLY
        unlink($qrRoute);

        return Response($this->fpdf->Output(), 200, $headers);		
	}
	
	function Header($qrRoute){   
	
		if (!file_exists($qrRoute)) 
		{
			exit('Por favor vuelva a solicitar el comprobante de registro.');
		}

		$this->fpdf->Image($qrRoute,15,10,50,50); //xywh
		$this->fpdf->SetY(22);

		$this->fpdf->SetFont('Arial','B',8);
			
		$this->fpdf->SetTextColor(0);
		$this->fpdf->SetXY(170, 15);
		$this->fpdf->Cell(30,4,'Fecha: '.date("d/m/Y",time()),0,1,'L'); 
		$this->fpdf->SetXY(170, 19);
		$this->fpdf->Cell(30,4,'Pagina: '.$this->fpdf->PageNo(),0,0,'L');
		
		$this->fpdf->SetY(62);
		$this->fpdf->SetFont('Arial','B',12);
		//$this->fpdf->SetFillColor(00,66,99);
		$this->fpdf->SetFillColor(255, 26, 26);
		//$this->fpdf->SetTextColor(255);
		$this->fpdf->SetTextColor(255, 255, 255);
		$this->fpdf->Cell(0,6,'PLANILLA DE REGISTRO "VUELTA A LA PATRIA"',1,1,'C', true);
		$this->fpdf->Ln(2.5);
	}
	
	function getDatosReportePDF(Persona $persona, Vivienda $vivienda, Pais $pais){
						
		$this->fpdf->SetTextColor(0);
		$this->fpdf->SetY(75);
		
		//DATOS PERSONALES
		$this->fpdf->SetFillColor(190);

		$this->fpdf->SetFont('Arial','B',11);
		$this->fpdf->Cell(NULL,6,utf8_decode('Datos Personales'),1,1,'C', true);
		//$this->fpdf->Ln(12);

		$this->fpdf->SetFont('Arial','B',9);
		$this->fpdf->SetFillColor(237);

		$this->fpdf->Cell(35,6,'Ciudadano: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,utf8_decode($persona->nb_nombre.' '.$persona->nb_apellido),1,1,'C', true);
		
		$this->fpdf->Cell(35,6,'Cedula: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$persona->tx_cedula,1,1,'C', true);

		$this->fpdf->Cell(35,6,'Fecha de Nacimiento: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$this->getFormatedDate($persona->fe_nacimiento),1,1,'C', true);

		$this->fpdf->Ln(8); 

		//VIVIENDA
		$this->fpdf->SetFillColor(190);

		$this->fpdf->SetFont('Arial','B',11);
		$this->fpdf->Cell(NULL,6,utf8_decode('Residencia en el Extranjero'),1,1,'C', true);
		//$this->fpdf->Ln(12);

		$this->fpdf->SetFont('Arial','B',9);
		$this->fpdf->SetFillColor(237);

		$this->fpdf->Cell(35,6,'Pais: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$pais->nb_pais,1,1,'C', true);
		
		$this->fpdf->Cell(35,6,'Estado: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$vivienda->nb_estado,1,1,'C', true);

		$this->fpdf->Cell(35,6,'Ciudad: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$vivienda->nb_ciudad,1,1,'C', true);

		$this->fpdf->Cell(35,6,'Calle: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$vivienda->tx_calle,1,1,'C', true);

		$this->fpdf->Cell(35,6,'Casa: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$vivienda->tx_casa,1,1,'C', true);

		$this->fpdf->Cell(35,6,utf8_decode('Teléfono: '),1,0,'C', true);
		$this->fpdf->Cell(0,6,$vivienda->tx_telefono,1,1,'C', true);

		$this->fpdf->Cell(35,6,'Tipo de vivienda: ',1,0,'C', true);
		$this->fpdf->Cell(0,6,$vivienda->tipoVivienda->nb_tipo_vivienda,1,1,'C', true);

	}
	
	function Footer(){
		
		//IMAGEN FONDO

		$this->fpdf->Image('./img/vuepat-image.jpeg', 60, 180, 80,50);
		
		$this->fpdf->SetFillColor(255);
		$this->fpdf->SetTextColor(0);
		$this->fpdf->SetY(242);
		$this->fpdf->SetFont('Arial','B',9);
		$this->fpdf->Cell(NULL,6,'**********',0,1,'C', FALSE);
		$this->fpdf->Cell(NULL,6,'**********',0,0,'C', FALSE);
	}

	private function getQRCode ($user, Persona $persona, Vivienda $vivienda, Pais $pais) 
	{
		//ID
		$id = str_pad($user->id_usuario, 9, "0", STR_PAD_LEFT);

		// Personal Information
	    $firstName = $persona->nb_nombre;
	    $lastName  = $persona->nb_apellido;
	    $email     = $user->email;
	    $title = '';
	    
	    // Addresses
	    $homeAddress = [
	        'type'     => 'home',
	        'pref'     => true,
	        'street'   => $vivienda->tx_casa . ' ' . $vivienda->tx_calle,
	        'city'     => $vivienda->nb_ciudad,
	        'state'    => $vivienda->nb_estado,
	        'country'  => $pais->nb_pais,
	        'zip'      => ''
	    ];
	    
	    $addresses = [$homeAddress];
	    
	    // Phones
	    $homePhone = [
	        'type'      => 'home',
	        'number'    => $persona->tx_telefono,
	        'cellPhone' => false
	    ];
	    $cellPhone = [
	        'type'      => 'home',
	        'number'    => $persona->tx_celular,
	        'cellPhone' => true
	    ];
	    
	    $phones = [$homePhone, $cellPhone];

		//CHECK IF ROUTE EXISTS OR CREATE
		if (!file_exists($this->directoryPath)) { mkdir($this->directoryPath, 0777, true); }

		//SETTING ROUTE
    	$qrImageRoute = $this->directoryPath . $this->qrImageName;

    	//GENERATE QR CODE
		QRCode::vCard($id, $firstName, $lastName, $email, $addresses, $phones)
	            ->setErrorCorrectionLevel('H')
	            ->setSize(4)
	            ->setMargin(2)
	            ->setOutfile($qrImageRoute)
	            ->png();

	    //RETURNS TEMPORAL QR IMAGE ROUTE
        return $qrImageRoute;
	}

	private function getFormatedDate ($date) 
	{
		if (!isset($date))
		{
			return '';
		}

		$dateArray = explode("-", $date);

		$day = $dateArray[2];
		$month = $dateArray[1];
		$year = $dateArray[0];

		return $day . '-' . $month . '-' . $year;
	}

}