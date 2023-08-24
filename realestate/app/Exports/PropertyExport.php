<?php

namespace App\Exports;

use App\Models\Property;
use Maatwebsite\Excel\Concerns\FromCollection;

class PropertyExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {

        return Property::select('property_thambnail','property_name','ptype_id','property_status','city','property_code','status','agent_id','lowest_price','max_price',)->get();
    }
}
