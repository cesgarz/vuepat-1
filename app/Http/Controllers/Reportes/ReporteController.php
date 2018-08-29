<?php

namespace App\Http\Controllers\Reportes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Reportes\ReporteModel;
use \App\Http\Controllers\Reportes\ExcelReportClass ;
use Illuminate\Support\Facades\Storage;
use \Symfony\Component\HttpFoundation\Response;

class ReporteController extends Controller
{
    public  $schema       = 'pagos';
	public  $modulo       = 'pagos';
	public  $tabla        = 'banco';
	public  $remId        = [];
    public  $addId        = [];
    protected $dataReport = null;
    
    /*-----------------------*/
	/*Constructor de la clase*/
	function __construct(ReporteModel $reporteModel){
		
        $this->dataReport = $reporteModel;

	}//Fin del contructor de la clase
	/*-----------------------------*/
	
	
    public function showReporte($tabla){

        $this->tabla =  $tabla;
		
		$this->dataReport->schema = $this->schema;
		
		$data = $this->setFormInputs();

        return $data;
		
	}
	
	
	public function setFormInputs(){
		
		$formInputs 	       = [];
		
        $tipoCampos            = $this->getTipoCampos();
        				
        $formInputs['campos']  = $tipoCampos['campos'];
        
        $formInputs['tabla']   = $this->tabla;
        
		$formInputs['filtros'] = $this->getFiltrosTabla($tipoCampos['filtros']);
		
        $formInputs['dateset'] = $tipoCampos['dateset'];

        return $formInputs;

	}

	public function getTipoCampos()
	{
		
		$data	 = $this->dataReport->camposTabla( $this->tabla );

		$addId   = $this->addId;
		
		$remId   = $this->remId;
				
		$campos  = [];
		
		$filtros = [];
		
		$dateSet = [];
		
		foreach($data as $row)
		{
            
            $prefijo  = substr( $row->nb_columna, 0 , 2 );  // tx_campo -> tx
			
			$columna  = $row->nb_columna;
			
			$etiqueta = $row->tx_comentario;
			
			switch(true){
			
				case ( $prefijo != 'id' ) or ( in_array($columna, $addId) ):   //nombre campo
					
					if($prefijo != 'fe')
					{ 
						$campos []  = ['nombre' => $etiqueta, 'valor' => "$columna|$etiqueta"];
					} 
					else
					{
                        $campos []  = ['nombre' => $etiqueta, 'valor' => "$columna|$etiqueta"];
                        
						$dateSet[]  = ['nombre' => $etiqueta, 'valor' => "$columna|$etiqueta"];
					}
					  
					break;

				case ( $prefijo == 'id' ) and ( !in_array($columna, $remId) ): //filtros(id)
					
					$filtros[] = ['nombre' => $etiqueta, 'valor' => $columna];           	
					
					break;

				break;
				
			}; 

		}
		
		return  [
                    'campos'   => $campos,
					'filtros'  => $filtros,
                    'dateset'  => $dateSet
                ];
	}
	
	public function getFiltrosTabla($filtros)
	{
		$inputs = [];
		foreach($filtros as $filtro )
		{

			$filtroId  = $filtro['valor'];
			
			$etiqueta  = ucwords( strtolower( $filtro['nombre'] ) );
						
			$campoId   = $filtroId;
			
			$campo     = str_replace( 'id_' , 'nb_', $filtroId );  
						
            $campos    = [ $campoId,  $campo ]; 
			
            $data      =  $this->dataReport->getReporte($this->tabla, $campos);

            $items 	   = [];
            
			if( count($data) > 0)
			{
				foreach( $data as $row)
				{
                    $row = (array) $row;

                    if( (array) $row[$campo] != "" )
					{
						$items[] = ['nombre' => $row[$campo], 'valor' => $row[$campoId] ];

					}
				}
				
			}else{
				
				$items[] = ['nombre' => 'Sin datos', 'valor' => '0' ] ;
				
			}
			
			$inputs[] =	array(	
                                'campoid' 	=> $campoId,
								'etiqueta' 	=> $etiqueta,
								'items' 	=> $items,
							);
        }
		
		return $inputs;
	}

	public function getReporte(Request $request)
	{
		$validate = request()->validate([

            'campos'        	=> 'required',
		],
		[
			'campos.required'   => 'Seleccione por lo menos un campo del reporte'
		]);

		$data = $this->getDataReporte($request->all());
		
		return $data;
	
	}
	
	public function get_reporte_excel($data_post)
	{
		$this->CI->M_reporteador->schema = $this->schema;
		
		$data = $this->get_data_reporte($data_post);

		$url  = $this->get_table_Excel($data['nb_campos'], $data['data']);
		
		echo json_encode($url);
	
	}
	
	public function getDataReporte($request)
	{
		$tabla  	  = $request['tabla'];
		$headers	  = [];
		$campos       = [];
		$filtros   	  = []; 
	 	$between   	  = []; 
		$order_by 	  = []; 
		$group_by 	  = [];
		 
		//check Filtros
		foreach( $request['filtros'] as $filtro )
		{
			if( $filtro[ key( $filtro ) ]  != null  )
			{
				$filtros[ key( $filtro) ] = $filtro[ key( $filtro ) ];
			}

		}
		//check Campos
		foreach( $request['campos'] as $data )
		{
			$data = explode( '|', $data);

			$campos []  = $data[0];
			$headers[]  = ['text'=> $data[1], 'value' =>  $data[0] ];
		}

		$data = $this->dataReport->getReporte($tabla, $campos, $filtros, $between, $order_by, $group_by);
		
		return  ['data' => $data, 'headers' => $headers];
		
	}

	public function getReporteExcel(Request $request) 
    {         
		
		$validate = request()->validate([

            'campos'        	=> 'required',
		],
		[
			'campos.required'   => 'Seleccione por lo menos un campo del reporte'
		]);

        $request  = $request->all(); 
        $tabla    = $request['tabla']; 
        $headers  = []; 
        $campos   = []; 
        $filtros  = []; 
        $between  = []; 
        $order_by = []; 
        $group_by = []; 
         
		//check Filtros 
		if(isset($request['filtros']))
		{

			foreach( $request['filtros'] as $key => $filtro ) 
			{ 
				$filtros[ $key ][] = $filtro; 

			} 
		}

        //check Campos 
        foreach( $request['campos'] as $data ) 
        { 
            $data = explode( '|', $data); 

            $campos []  = $data[0]; 
            $headers[]  = $data[1]; 

        } 
        $data = $this->dataReport->getReporte($tabla, $campos, $filtros, $between, $order_by, $group_by); 
        $data = json_decode(json_encode($data),true); 
        $repoteExcel = new ExcelReportClass($data, $headers); 

        if( \Excel::store($repoteExcel, 'reporte.xlsx', 'public') ) 
        { 
            return  Storage::url('reporte.xlsx'); 
        }; 
     
    } 

    public function getArchivo() 
    { 
        $file ='./storage/reporte.xlsx'; 
        return response()->download($file); 

    } 

    public function objectToArray($d) 
    { 
        if (is_object($d)) 
        { 
            $d = get_object_vars($d); 
        } 
         
        if (is_array($d)) 
        { 
            return array_map(__FUNCTION__, $d); 
        } 
        else 
        { 
            return $d; 
        } 
    } 
	
	
	
	
}
