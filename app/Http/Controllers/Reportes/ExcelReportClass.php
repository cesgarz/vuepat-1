<?php 

namespace App\Http\Controllers\Reportes; 

use Maatwebsite\Excel\Concerns\FromCollection; 
use Maatwebsite\Excel\Concerns\WithHeadings; 
use \Illuminate\Support\Collection; 
use Maatwebsite\Excel\Concerns\ShouldAutoSize; 
use Maatwebsite\Excel\Concerns\WithEvents; 
use Maatwebsite\Excel\Events\AfterSheet; 
use Maatwebsite\Excel\Events\BeforeExport; 

class ExcelReportClass implements FromCollection,WithHeadings, ShouldAutoSize, WithEvents 
{ 
    private $collection; 
    private $headers; 
     
    public function __construct($dataArray, $headers) 
    { 
        $this->collection = collect($dataArray); 
        $this->headers    = $headers; 

    } 

    public function collection() 
    { 
        return  $this->collection; 
    } 

    public function headings() :array 
    { 
        return $this->headers; 
    } 

    public function registerEvents(): array 
    { 
        return [ 
            AfterSheet::class    => function(AfterSheet $event) { 
                 
                $cellRange = 'A1:W1'; // All headers 
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14); 
                //$event->sheet->getDelegate()->setCellValue('D1', 39813); 
                /*$event->sheet->getStyle('D1') 
                ->getNumberFormat() 
                ->setFormatCode(\PhpOffice\PhpSpreadsheet\Style\NumberFormat::FORMAT_DATE_DDMMYYYY); 
                /*->getStyle('A1')->getNumberFormat() 
                ->setFormatCode(\PhpOffice\PhpSpreadsheet\Style\NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);*/ 
            }, 
            BeforeExport::class => function(BeforeExport $event) { 
                $event->writer->getProperties()->setCreator('dayanara81@gmail.com'); 
            }, 
        ]; 
    } 
}