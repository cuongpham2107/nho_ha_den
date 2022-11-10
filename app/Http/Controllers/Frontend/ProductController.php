<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Product;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Category;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Page;

class ProductController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    $banner = \App\Banner::where('type', 'product')->first();
    $banner2 = \App\Banner::where('type', 'product2')->first();
    $product = \App\Product::where('status', 'ACTIVE')->orderBy('id', 'desc')->first();
    $contact = Page::where(['slug' => 'contact', 'status' => 'ACTIVE'])->first();

    $pageMeta = [
      'title' => $product->title ?? null,
      'meta_description' => $product->description ?? null,
      'image' => $product->image ?? null,
    ];
    return view('frontend.product.show', compact('banner', 'banner2', 'product', 'contact', 'pageMeta'));
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
    //
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $product = Product::where('slug', $id)->first();
    $title = $product->name ?? "";
    $recentProduct = Product::limit(3)->get();
    //        dd($product);
    $page = [
      'title' => $product->name,
      'meta_description' => $product->meta_description,
      'image' => $product->image
    ];
    return view('frontend.product.productDetail', compact('product', 'title', 'recentProduct', 'page'));
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
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
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
    //
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    //
  }
  
}
