<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\dashboard\AboutController;
use App\Http\Controllers\dashboard\BlogController;
use App\Http\Controllers\dashboard\PestController;
use App\Http\Controllers\dashboard\ServiceController;
use App\Http\Controllers\dashboard\ProjectController;
use App\Http\Controllers\dashboard\TeamController;
use App\Http\Controllers\dashboard\ClientController;
use App\Http\Controllers\dashboard\TestimonialController;
use App\Http\Controllers\dashboard\AppointmentController;
use App\Http\Controllers\dashboard\GeneralController;
use App\Http\Controllers\dashboard\BannerController;
use App\Http\Controllers\dashboard\SocialController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware('auth:sanctum')->get('/list', [UserController::class,'index']);
Route::resource('contact', ContactController::class);
Route::resource('about_list', AboutController::class);
Route::resource('blog', BlogController::class);
Route::resource('pest', PestController::class);
Route::resource('service', ServiceController::class);
Route::resource('project', ProjectController::class);
Route::resource('team', TeamController::class);
Route::resource('client', ClientController::class);
Route::resource('testimonial', TestimonialController::class);
Route::resource('general', GeneralController::class);
Route::resource('banner', BannerController::class);
Route::resource('social', SocialController::class);
Route::resource('appointment', AppointmentController::class);
