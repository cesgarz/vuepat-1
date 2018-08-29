<?php

namespace App\Models\Reportes;

use Illuminate\Database\Eloquent\Model;

class ReporteModel extends Model
{
    private $schema = 'public';
    private $query  =  null;
    
    public function camposTabla($tabla)
    {
        $results = \DB::select( \DB::raw(
            "SELECT cols.column_name AS nb_columna, 
                    udt_name 		 AS co_tipo,
                    COALESCE(
                        (
                            SELECT distinct pg_catalog.col_description(oid,cols.ordinal_position::int) 
                            FROM pg_catalog.pg_class c 
                            WHERE c.relname = cols.table_name limit 1
                        ),
                        cols.column_name
                    ) AS tx_comentario
            FROM information_schema.columns cols
            WHERE cols.table_name   = '$tabla'
            AND table_schema        = '$this->schema'
            ORDER BY ordinal_position"
        ) 
        );                            
        return $results;

    }

    function getReporte( 	$tabla 		, 
                            $campos     ,
                            $where 		= [], 
                            $between 	= [], 
                            $order_by 	= [], 
                            $group_by	= []
						   )
	{
                
        $this->query = \DB::table($tabla)->distinct();
        
        foreach ($campos as $key => $campo) {

            $this->query->addSelect($campo)->get();

        }

		foreach($where as $campo => $valores)
		{
			if( is_array($valores) )
			{
                $this->query->whereIn($campo, $valores);

			}else{
				
                $this->query->where($campo, $valores);

			}
		}	
        
		foreach($between as $campo => $valores)
		{
			
			if( ( $valores['desde'] != '' ) and ( $valores['hasta'] != '' ) )
			{
               
               // $this->db->where("TO_DATE(".$campo.", 'DD/MM/YYYY') BETWEEN '".$valores['desde']."' AND '".$valores['hasta']."'");
                
                $this->query->whereBetween("TO_DATE($campo, 'DD/MM/YYYY')", [ $valores['desde'], $valores['hasta'] ]);
                

			}else if(($valores['desde']!='') and ($valores['hasta']=='' )){
				
				$this->query->where("TO_DATE($campo, 'DD/MM/YYYY')",  $valores['desde']);
				
			}
 			
		}			

		foreach($order_by as $campo => $tipo)
		{
            $this->query->orderBy($campo, $tipo);
		}
		
		if( count($group_by) > 0 )	
		{
            $this->query->groupBy($group_by);
			
		}
		
		try {
            
            $resultado = $this->query->get()->toArray();

		} catch (Exception $e) {
			
			$resultado = [ "error en la consulta",  $e->getMessage() ];
		
		}
		
		return $resultado;
		
	}
}
