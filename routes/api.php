<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('user/login', 'PassportController@login');
Route::post('user/register', 'PassportController@register');
Route::get('Index/getTops', 'IndexController@getTops');
 	// 测试接口
	Route::any('test','Test@test');



/**
 * 首页界面接口
 */
// 获取导航
Route::get('Gethomenav','HOME\HomeInterface@gethomenav');
// 童星邀约
Route::post('ChildInvite','HOME\HomeInterface@childInvite');
// 获取轮播
Route::post('GetBanner','HOME\HomeInterface@getBanner');
 // 获取童星萌娃详情
Route::post('GetChildDetail','HOME\HomeInterface@getChildDetail');
 // 获取筛选童星
Route::post('GetFilterChild','HOME\HomeInterface@getFilterChild');
 // 获取头条
Route::post('GetHeadTiao','HOME\HomeInterface@getHeadTiao');
 // 获取其他推荐童星
Route::post('GetOhterRecommendChild','HOME\HomeInterface@getOhterRecommendChild');
 // 获取推荐童星
Route::post('GetRecommendChild','HOME\HomeInterface@getRecommendChild');


/**
 * 公告类接口
 */
// 获取已参加的萌娃
Route::post('alreadyJoinChild','NOTICE\NoticeInterface@alreadyJoinChild');
// 获取公告列表
Route::post('getNoticeList','NOTICE\NoticeInterface@getNoticeList');
// 获取公告筛选地区
Route::post('getNoticeFilterPlace','NOTICE\NoticeInterface@getNoticeFilterPlace');
// 上传图片测试
Route::post('unloadImgTest','NOTICE\NoticeInterface@unloadImgTest');
// 获取公告筛选条件
Route::post('getNoticeFilterCondition','NOTICE\NoticeInterface@getNoticeFilterCondition');
// 获取热门公告
Route::post('geHotNotice','NOTICE\NoticeInterface@geHotNotice');

// 组
Route::group(['middleware' => 'auth:api'], function(){
    Route::post('info', 'PassportController@getDetails');

// 获取通告详情    
Route::post('getNoticeDetail','NOTICE\NoticeInterface@getNoticeDetail');
// 获取报名时童星角色的价格类型
Route::post('getEnrollChildPriceType','NOTICE\NoticeInterface@getEnrollChildPriceType');
//报名
Route::post('enroll','NOTICE\NoticeInterface@enroll');
});