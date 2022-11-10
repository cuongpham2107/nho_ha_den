<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('clear-cache', function () {
    Artisan::call('config:cache');
    Artisan::call('cache:clear');
//    Artisan::call('view:clear');
//    Artisan::call('storage:link');
    return 'xong';
});

//Route::get('/', function () {
//    return view('welcome');
//});

Route::group([], function (){
    Route::resource('/',\Frontend\HomeController::class);
    Route::resource('/products',\Frontend\ProductController::class);
    Route::get('/lien-he',[\App\Http\Controllers\Frontend\ContactController::class, 'index'])->name('contact');
    Route::get('/gioi-thieu',[\App\Http\Controllers\Frontend\AboutController::class,'index'])->name('about');
    Route::get('/news', [\App\Http\Controllers\Frontend\PostController::class, 'index'])->name('posts.index');
    Route::get('/posts/{slug}', [\App\Http\Controllers\Frontend\PostController::class, 'show'])->name('posts.show');
    Route::resource('/works',\Frontend\WorkController::class);
    Route::resource('pages',\Frontend\PageController::class);
    Route::post('/feedback',[\App\Http\Controllers\Frontend\FeedbackController::class,'store'])->name('feedback');
    Route::get('/stories', [\App\Http\Controllers\Frontend\ServiceController::class,'story']);
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('sitemap-create', function () {
  Artisan::call('sitemap:create');

  return 'xong';
});