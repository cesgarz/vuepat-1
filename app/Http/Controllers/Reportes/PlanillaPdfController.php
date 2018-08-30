<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use \App\Models\Persona;
use \App\Models\Vivienda;
use \App\Models\Pais;



class PlanillaPdfController extends Controller
{
    private $fpdf;

    function __construct()
    {
        $this->fpdf = app('FPDF');
	}
	
    function index(){
		
		$this->fpdf->AddPage('P', 'Letter');
		$this->fpdf->SetMargins(15,25,15);
		$this->fpdf->SetAutoPageBreak(true , 25);
		
		$this->Header();
		
		$this->getDatosReportePDF();

		$this->Footer();
        
        $headers=['Content-Type'=>'application/pdf'];

        return Response($this->fpdf->Output(), 200, $headers);		
	}
	
	function Header(){   
	
		$this->fpdf->Image('./img/qr/qrcode.png',15,10,50,50); //xywh
		$this->fpdf->SetY(22);

		$this->fpdf->SetFont('Arial','B',8);
			
		$this->fpdf->SetTextColor(0);
		$this->fpdf->SetXY(170, 15);
		$this->fpdf->Cell(30,4,'Fecha: '.date("d/m/Y",time()),0,1,'L'); 
		$this->fpdf->SetXY(170, 19);
		$this->fpdf->Cell(30,4,'Pagina: '.$this->fpdf->PageNo(),0,0,'L');
		
		$this->fpdf->SetY(55);
		$this->fpdf->SetFont('Arial','B',10);
		//$this->fpdf->SetFillColor(00,66,99);
		$this->fpdf->SetFillColor(255, 26, 26);
		//$this->fpdf->SetTextColor(255);
		$this->fpdf->SetTextColor(255, 255, 255);
		$this->fpdf->Cell(0,6,'PLANILLA DE REGISTRO "VUELTA A LA PATRIA"',1,1,'C', true);
		$this->fpdf->Ln(2.5);
	}
	
	function getDatosReportePDF(){
				
		   $user = \Auth::user();

           $persona = Persona::with(['estadoCivil:id_estado_civil,nb_estado_civil', 'personaDiscapacidad', 'vivienda'])
                              ->where('id_usuario', $user->id_usuario)
                              ->where('id_parentesco',  99)
                              ->first() ;

            $vivienda = Vivienda::with(['tipoVivienda:id_tipo_vivienda,nb_tipo_vivienda'])
                              ->where('id_usuario', $user->id_usuario)
                              ->where('id_ubicacion', 2)
                              ->first();

            $pais = Pais::select('nb_pais')
                              ->where('co_pais', $vivienda->co_pais)
                              ->first();

           if(!isset($persona) && !isset($vivienda)){
				
				exit('Aun no ha llenado los datos del Registro favor ir a la Seccion de registro ');
				
			}
						
			$this->fpdf->SetFont('Arial','B',7);
			$this->fpdf->SetFillColor(255);
			$this->fpdf->SetTextColor(0);
			
			$this->fpdf->SetY(70);
			
			//DATOS PERSONALES

			$this->fpdf->SetFont('Arial','B',10);
			$this->fpdf->Cell(NULL,6,utf8_decode('Datos Personales'),0,0,'C', true);
			$this->fpdf->Ln(12);
			
			$this->fpdf->SetFont('Arial','B',7);
			$this->fpdf->Cell(35,6,'Ciudadano: ',0,0,'D', true);
			$this->fpdf->Cell(91,6,utf8_decode($persona->nb_nombre.' '.$persona->nb_apellido),0,1,'D', true);
			
			$this->fpdf->Cell(35,6,'Cedula: ',0,0,'D', true);
			$this->fpdf->Cell(55,6,$persona->tx_cedula,0,1,'D', true);

			$this->fpdf->Cell(35,6,'Fecha de Nacimiento: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$persona->fe_nacimiento,0,1,'D', true);

			$this->fpdf->Ln(12); 

			//VIVIENDA

			$this->fpdf->SetFont('Arial','B',10);
			$this->fpdf->Cell(NULL,6,utf8_decode('Vivienda'),0,0,'C', true);
			$this->fpdf->Ln(12);

			$this->fpdf->SetFont('Arial','B',7);

			$this->fpdf->Cell(35,6,'Pais: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$pais->nb_pais,0,1,'D', true);
			
			$this->fpdf->Cell(35,6,'Estado: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$vivienda->nb_estado,0,1,'D', true);

			$this->fpdf->Cell(35,6,'Ciudad: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$vivienda->nb_ciudad,0,1,'D', true);

			$this->fpdf->Cell(35,6,'Calle: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$vivienda->tx_calle,0,1,'D', true);

			$this->fpdf->Cell(35,6,'Casa: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$vivienda->tx_casa,0,1,'D', true);

			$this->fpdf->Cell(35,6,utf8_decode('Teléfono: '),0,0,'D', true);
			$this->fpdf->Cell(35,6,$vivienda->tx_telefono,0,1,'D', true);

			$this->fpdf->Cell(35,6,'Tipo de vivienda: ',0,0,'D', true);
			$this->fpdf->Cell(35,6,$vivienda->tipoVivienda->nb_tipo_vivienda,0,1,'D', true);

			//IMAGEN FONDO

			$this->fpdf->Image('./img/background-image.jpeg', 60, 180, 80,50);

			/*
			$this->fpdf->Cell(35,6,'Ubicacion: ',0,0,'D', true);
	        $this->fpdf->Cell(151,6,utf8_decode($datosEmp['desuniadm']),0,1,'D', true);
			
			$this->fpdf->Cell(35,6,'Cargo: ',0,0,'D', true);
	        $this->fpdf->Cell(151,6,$datosEmp['descar'],0,1,'D', true);
			
			$this->fpdf->Cell(35,6,'Periodo: ',0,0,'D', true);
	        $this->fpdf->Cell(151,6,$datosEmp['fecdesper'].'  al  '.$datosEmp['fechasper'],0,1,'D', true);
			
			$this->fpdf->Ln(4);
			
			$this->fpdf->SetFillColor(245,242,242);
			$this->fpdf->Cell(66,6,'Descripcion','TB',0,'D', true);
			$this->fpdf->Cell(60,6,'Asignaciones','TB',0,'R', true);
			$this->fpdf->Cell(60,6,'Deducciones','TB',0,'R', true);
			
			$this->fpdf->SetFillColor(255);
			$this->fpdf->Ln(6);
			
			$asign = 0;
			$deduc = 0;
			$total = 0;
			
			foreach($datosPago as $row)
			{
				if($row['sigcon'] == 'A')
			    {
					$this->fpdf->Cell(66,6,utf8_decode($row['nomcon']),0,0,'L', true);
					$this->fpdf->Cell(60,6,number_format($row['valsal'],2,',','.'),0,0,'R', true);
					$this->fpdf->Cell(60,6,NULL,0,0,'C', true);
					
					$asign =  $asign+$row['valsal'];
					
				}else
			    {
					$this->fpdf->Cell(66,6,$row['nomcon'],0,0,'L', true);
					$this->fpdf->Cell(60,6,NULL,0,0,'C', true);
					$this->fpdf->Cell(60,6,number_format($row['valsal']*(-1),2,',','.'),0,0,'R', true);
	
					$deduc =  $deduc + ($row['valsal']*(-1));
					
				}
				$this->fpdf->Ln(6);
			}
			$this->fpdf->Ln(8);
			
			$total = ($asign) - $deduc;
			
			$this->fpdf->SetFont('Arial','B',8);
			$this->fpdf->SetFillColor(245,242,242);
			$this->fpdf->Cell(66,6,'TOTALES: ',0,0,'D', true);
	        $this->fpdf->Cell(60,6,number_format(($asign),2,',','.'),0,0,'R', true);
			$this->fpdf->Cell(60,6,number_format($deduc,2,',','.'),0,0,'R', true);
			
			$this->fpdf->Ln(8);
		
			$this->fpdf->SetFont('Arial','B',10);
			$this->fpdf->SetFillColor(00,66,99);
			$this->fpdf->SetTextColor(255);
			
			$this->fpdf->Cell(66,6,'NETO A COBRAR: ',0,0,'D', true);
			$this->fpdf->Cell(120,6,number_format($total,2,',','.'),0,1,'R', true);
			*/
	}
	
	function Footer(){
		
		#$this->fpdf->Image('./assets/modules/recibo_pago/images/firmarrhh.jpg',80,205,75,60); //xywh
		
		$this->fpdf->SetFillColor(255);
		$this->fpdf->SetTextColor(0);
		$this->fpdf->SetY(242);
		$this->fpdf->SetFont('Arial','B',9);
		$this->fpdf->Cell(NULL,6,'**********',0,1,'C', FALSE);
		$this->fpdf->Cell(NULL,6,'**********',0,0,'C', FALSE);
	}
}
