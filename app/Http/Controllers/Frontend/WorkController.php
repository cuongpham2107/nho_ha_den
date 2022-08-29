<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class WorkController extends Controller
{
  public function index()
  {
    $banner = \App\Banner::where('type', 'work')->first();
    $banner2 = \App\Banner::where('type', 'news2')->first();
    $posts = \App\Work::where('active',1)->orderBy('created_at', 'desc')->paginate(6);
    $pageMeta = [
      'title' => $banner->title ?? null,
      'meta_description' => $banner->description ?? null,
      'image' => setting('site.logo'),
    ];
    return view('frontend.work.index', compact('banner', 'banner2', 'posts', 'pageMeta'));
  }

  public function show($slug)
  {
    $banner = \App\Banner::where('type', 'work')->first();
    $post = \App\Work::where('active',1)->where('slug', $slug)->first();

    if ($post == null) {
      return view('frontend.pages.404');
    }

    $recent_posts = [];
    $pageMeta = [
      'title' => $post->title ?? null,
      'meta_description' => $post->meta_description ?? null,
      'image' => $post->image,
    ];

    return view('frontend.work.show', compact('banner', 'post', 'recent_posts', 'pageMeta'));
  }
}
