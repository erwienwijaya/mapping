<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Rute;
use DB;
use Illuminate\Support\Facades\Input;

class RuteController extends Controller
{
    //simpan marker ke database mysql via API.
    public function postMarker()
    {
        $rute = new Rute;
        $rute -> rute = Input::get('rute');
        $rute -> lat = Input::get('lat');
        $rute -> lng = Input::get('lng');
        $rute->save();  

        return response()->json(['success' => 'true']);
    }


    //menampilkan data rute melalui drop down via API.
    public function getData() 
    {
       $rute = DB::table('tes_rute')
               ->select(DB::raw('DISTINCT(rute)'))
               ->get();     
       
       return response()->json($rute);   
    }

    //menampilkan data marker di peta via API
    public function getMarker($id)
    {
        $rute = DB::table('tes_rute')
                ->select('rute','lat','lng')
                ->where('rute', $id)
                ->get();

        return response()->json($rute);        
    }

}
