<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Site;

class AdminController extends Controller {

    protected $site;

    function __construct() {
        $this->site = new Site();
    }

    public function index() {

        return view('back.index');
    }

    public function general() {
        $generalContent = $this->site->showContentSite('general');
        $generalContent = $generalContent[0]->content;

        return view('back.general', compact('generalContent'));
    }

    public function cv() {
        $cvContent = $this->site->showContentSite('cv');
        $cvContent = $cvContent[0]->content;


        return view('back.cv', compact('cvContent'));
    }

    public function about() {
        $aboutContent = $this->site->showContentSite('about');
        $aboutContent = $aboutContent[0]->content;

        return view('back.about', compact('aboutContent'));
    }

    public function project() {
        $projectContent = $this->site->showContentSite('project');
        $projectContent = $projectContent[0]->content;

        return view('back.project',compact('projectContent'));
    }

    public function save() {
        $section = $_POST['section'];
        $content = $_POST['content'];

        $this->site->UpdateContentSite($section, $content);

        return redirect('/admin');
    }

}
