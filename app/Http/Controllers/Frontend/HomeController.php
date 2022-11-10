<?php

namespace App\Http\Controllers\Frontend;

use App\Banner;
use App\Http\Controllers\Controller;
use App\Pricing;
use App\Product;
use App\Staticdata;
use App\StaticDatum;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Application|Factory|View|Response
     */
    public function index()
    {
        $banner= Banner::where('type', 'home')->first();
        $page1 = Page::where(['slug' => 'cach-che-bien', 'status' => 'ACTIVE'])->first();
        $page2 = Page::where(['slug' => 'cach-bao-quan', 'status' => 'ACTIVE'])->first();
        $page3 = Page::where(['slug' => 'cong-dung', 'status' => 'ACTIVE'])->first();
        $about = Page::where(['slug' => 'about', 'status' => 'ACTIVE'])->first();
        $service = Page::where(['slug' => 'services', 'status' => 'ACTIVE'])->first();
        $services = \App\Service::where('active', 1)->inRandomOrder()->limit(4)->get();
        $home_mid = Banner::where('type', 'home_mid')->where('status', 'ACTIVE')->first();
        $product = Page::where(['slug' => 'products', 'status' => 'ACTIVE'])->first();
        $products = \App\Product::where('status', 'ACTIVE')->limit(5)->get();
        $report = \App\Staticdata::where('status', 1)->where('slug', 'phan-hoi')->first();
        $reports = \App\Staticdata::where('status', 1)->where('type', 'report')->get();
        $banner_number= Banner::where('type', 'banner_number')->first();
        $numbers= \App\Staticdata::where('status', 1)->where('type', 'number')->get();
        $posts= Post::where('status', 'PUBLISHED')->latest()->limit(4)->get();
        // $achievement = Page::where(['slug' => 'thanh-tuu', 'status' => 'ACTIVE'])->first();
        // $page = Page::where(['slug' => 'home', 'status' => 'ACTIVE'])->first();
        // $aboutUs = Page::where(['slug' => 'about-us-home-page', 'status' => 'ACTIVE'])->first();
        // $posts  =   Post::where('status', 'PUBLISHED')->latest()->limit(3)->get();
        // $products= Product::where('status', 'ACTIVE')->limit(4)->get();
        // $services= Staticdata::where(['type' => 'linh-vuc', 'status' => 'ACTIVE'])->limit(3)->get();
        // $procedures = Staticdata::where(['type' => 'quy-trinh', 'status' => 'ACTIVE'])->get();
        // $partners = Staticdata::where(['type' => 'doi-tac', 'status' => 'ACTIVE'])->get();

        return view('frontend.homepage.index', compact('banner', 'page1', 'page2', 'page3', 'about', 'service', 'services', 'home_mid', 'product', 'products', 'report', 'reports', 'banner_number', 'numbers', 'posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     * return redirect to contact blade.
     */
    public function contact()
    {
        return view('frontend.contact.index');
    }

}
