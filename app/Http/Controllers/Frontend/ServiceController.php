<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use TCG\Voyager\Models\Category;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;

class ServiceController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return Application|Factory|View|Response
   */
  public function index()
  {
    $banner = \App\Banner::where('type', 'news')->first();
    $banner2 = \App\Banner::where('type', 'news2')->first();
    $posts = Post::where('status','published')->orderBy('created_at', 'desc')->paginate(6);
    $pageMeta = [
      'title' => $banner->title ?? null,
      'meta_description' => $banner->description ?? null,
      'image' => setting('site.logo'),
    ];
    return view('frontend.service.index', compact('banner', 'banner2', 'posts', 'pageMeta'));
  }

  public function show($slug)
  {
    $banner = \App\Banner::where('type', 'post')->first();
    $post = Post::where('status','published')->where('slug', $slug)->first();

    if ($post == null) {
      return view('frontend.pages.404');
    }

    $recent_posts = [];
    $pageMeta = [
      'title' => $post->title ?? null,
      'meta_description' => $post->meta_description ?? null,
      'image' => $post->image,
    ];

    return view('frontend.service.show', compact('banner', 'post', 'recent_posts', 'pageMeta'));
  }
  public function story()
  {
    $product = Page::where('slug', 'story')->first();
    // dd($product);
    $banner = \App\Banner::where('type', 'product')->first();
    $banner2 = \App\Banner::where('type', 'product2')->first();
    $title = $product->name ?? "";
    // $recentProduct = Product::limit(3)->get();
    //        dd($product);
    $page = [
      'title' => $product->name,
      'meta_description' => $product->meta_description,
      'image' => $product->image
    ];
    return view('frontend.product.story', compact('product', 'title', 'page','banner','banner2'));
  }
}
