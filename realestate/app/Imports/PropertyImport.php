<?php

namespace App\Imports;

use App\Models\Property;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use DB;
use Maatwebsite\Excel\Concerns\ToModel;

class PropertyImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $id = Auth::user()->id;
        $uid = User::findOrFail($id);
        $nid = $uid->credit;

        User::where('id',$id)->update([
            'credit' => DB::raw('1 + '.$nid),
        ]);

        return new Property([
            'property_thambnail'   => $row[0],
            'property_name'   => $row[1],
            'ptype_id'   => $row[2],
            'property_status'   => $row[3],
            'city'   => $row[4],
            'property_code'   => $row[5],
            'status'   => $row[6],
            'agent_id'   => $row[7],
            'lowest_price'   => $row[8],
            'max_price'   => $row[9],
            
            
        ]);
    }
}
