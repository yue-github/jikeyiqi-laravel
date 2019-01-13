<?php
 /**
  * 主页接口集成
  */
namespace App\Http\Controllers\HOME;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Db;
use Illuminate\Support\Facades\Input;
 
class HomeInterface extends Controller
{
     public function __construct () {

     }

// 数据库插入
     function SQLInsert($who){
      // 童星邀约
         switch ($who){
            case 'childInvite':
                DB::table('childinvite')->insert(
                        ['contacter' => request('contacter'),'method' => request('method'),'babyid' => request('babyid')]
                 );
            break;
         }
       
     }
// 数据库更新
     function SQLUpdate($who){
         
       
     }
// 数据库删除
     function SQLDelete($who){
         
       
     }
// 数据库查询
     function SQLSelect($who,$where){
         // 参数区别谁调用以便进行不同的查询
       switch ($who){
            // 导航查询
            case 'gethomenav':
                 $gethomenav = DB::table('gethomenav')->get();
                 echo $gethomenav;
            break;
            // 获取推荐童星
            case 'getRecommendChild':
                 $getRecommendChild = DB::table('recommendchild')->get();
                 echo $getRecommendChild;
            break;
            //获取童娃详情
            case 'getChildDetail':
                 $getChildDetail = DB::table('getchilddetail')->where('id', $where)->get();
                 echo $getChildDetail;
            break;
            // 获取头条
            case 'getHeadTiao':
                 $getHeadTiao = DB::table('getheadtiao')->get();
                 echo $getHeadTiao;
            break;
            // 获取轮播
            case 'getBanner':
                 $getBanner = DB::table('getbanner')->get();
                 echo $getBanner;
            break;
            // 获取其它童星推荐
            case 'getOhterRecommendChild':

                 $getotherrdchildtoday = DB::table('getotherrdchildtoday')->get();
                 $getotherrdchildxiao = DB::table('getotherrdchildxiao')->get();
                 $getotherrdchildrec = DB::table('getotherrdchildrec')->get();
                 $getotherrdchildauthor = DB::table('getotherrdchildauthor')->get();
                 $getOhterRecommendChild=[];
                 $getOhterRecommendChild[]=json_decode($getotherrdchildtoday,true);
                 $getOhterRecommendChild[]=json_decode($getotherrdchildxiao,true);
                 $getOhterRecommendChild[]=json_decode($getotherrdchildrec,true);
                 $getOhterRecommendChild[]=json_decode($getotherrdchildauthor,true);
                 echo json_encode($getOhterRecommendChild);
            break;
            // 获取筛选后的童星
            case 'getFilterChild':
            $getFilterChild = DB::table('getfilterchild')->where($where)->get(['id','name','sex','birthday','isAuth','height','weight','headpic']);
                // $getFilterChild = DB::table('getfilterchild')->whereColumn([
                //       ['height', '=', $where['height']],
                //       ['sex', '=', $where['sex']],
                //       ['place', '=', $where['place']],
                //       ['cardmode', '=', $where['cardmode']],
                //       ['nationatily', '=', $where['nationatily']],
                //       ['lookstyle', '=', $where['lookstyle']],
                //       ['speciality', '=', $where['speciality']],
                //       ['age', '=', $where['age']],
                //       ['video', '=', $where['video']]
                //    ])->get();
                echo $getFilterChild;
            break;
            
         }
     }



// 获取导航
     function gethomenav(){
         $this->SQLSelect('gethomenav',null);
       
     }
// 童星邀约  
     function childInvite(){
        if(request('contacter')&&request('method')&&request('babyid')){
          $this->SQLInsert('childInvite',null);
          echo '邀约成功';
        }else{
          echo '邀约失败';
        }
     }
// 获取轮播   
     function getBanner(){
        $this->SQLSelect('getBanner',null);
          
         
     }
// 获取童星萌娃详情
     function getChildDetail(){
         $id=request('id');
         if($id){
            $this->SQLSelect('getChildDetail',$id);
         }else{
            echo '数据获取失败';
         }
         
          
         
     }
// 获取筛选童星 
     function getFilterChild(){
      if(Input::get()){

        $this->SQLSelect('getFilterChild',['height'=>request('height'),'sex'=>request('sex'),'place'=>request('place'),'cardmode'=>request('cardmode'),'nationatily'=>request('nationatily'),'lookstyle'=>request('lookstyle'),'speciality'=>request('speciality'),'age'=>request('age'),'video'=>request('video')]);
      }
          
         
     }
// 获取头条
     function getHeadTiao(){
        $this->SQLSelect('getHeadTiao',null);
          
         
     }
 // 获取其他推荐童星
     function getOhterRecommendChild(){
        $this->SQLSelect('getOhterRecommendChild',null);
          
         
     }
// 获取推荐童星  
     function getRecommendChild(){
        $this->SQLSelect('getRecommendChild',null);
          
         
     }
}