<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use App\Personnel;
use App\Staticdata;

class AboutController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return Application|Factory|View|Response
   */
  public function index()
  {
    $banner = \App\Banner::where('type', 'about')->first();
    $banner2 = \App\Banner::where('type', 'quality')->where('status', 'ACTIVE')->first();
    $qualities = \App\Staticdata::where('status', 1)->where('type', 'quality')->get();
    $about = Page::where(['slug' => 'about', 'status' => 'ACTIVE'])->first();
    $home_mid = \App\Banner::where('type', 'home_mid')->where('status', 'ACTIVE')->first();

    $title = $about->title ?? "Về chúng tôi";
    $pageMeta = [
      'title' => $title ?? 'Contact Us',
      'image' => $about->image ?? '',
      'meta_description' => $about->meta_description ?? ''
    ];
    return view('frontend.aboutUs.index', compact('banner', 'banner2', 'qualities', 'about', 'pageMeta', 'home_mid'));
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
}
