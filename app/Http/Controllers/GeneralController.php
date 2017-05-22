<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Site;

class GeneralController extends Controller
{
    protected $site;
    
    function __construct() {
        $this->site = new Site();
    }


    protected function index() {
      $cvContent = $this->site->showContentSite('cv');
      $cvContent = $cvContent[0]->content;
      $aboutContent = $this->site->showContentSite('about');
      $aboutContent = $aboutContent[0]->content;
      $projectContent = $this->site->showContentSite('project');
      $projectContent = $projectContent[0]->content;
      $generalContent = $this->site->showContentSite('general');
      $generalContent = $generalContent[0]->content;
      
      return view('front.general', compact('cvContent', 'aboutContent', 'generalContent', 'projectContent'));
    }
}
