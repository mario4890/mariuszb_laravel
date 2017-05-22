<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class Site extends Model
{
    public function showSiteSection() {
        $sql = "
            SELECT s.section
            FROM `sites` AS s
                ";
        $query = DB::select($sql);
        
        return $query;
    }
    
    public function showContentSite($section) {
        $sql = "
            SELECT s.content
            FROM `sites` AS s
            WHERE s.section = '$section'
                ";
        $query = DB::select($sql);
        
        return $query;
    }
    
    public function UpdateContentSite($section, $content) {
        $sql = "
            UPDATE `sites` AS s
            SET s.content = '$content'
            WHERE s.section = '$section'
                ";
        $query = DB::select($sql);
    }
}
