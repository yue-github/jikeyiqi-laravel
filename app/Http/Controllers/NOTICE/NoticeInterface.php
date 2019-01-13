<?php 
/**
 * 公告类接口
 */
namespace App\Http\Controllers\NOTICE;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Db;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class NoticeInterface extends Controller{
    public $user=null;
	public function __construct () {
        $this->user=Auth::user();
     }
    // 数据库更新函数
    public function SQLUpdate($who,$where){

    }
     // 数据库删除函数
    public function SQLDelete($who,$where){

    }
     // 数据库插入
    public function SQLInsert($who,$where){

    }
     // 数据库查询
    public function SQLSelect($who,$where){
 // 注:还可写成echo DB::table($who)->where($where)->get();
    	switch ($who){
    		// 获取公告列表
    		case 'getNoticeList':
    			  $getNoticeList = DB::table('getnoticelist')->where($where)->get();
                  $getNoticeList['data']=DB::table('getnoticefiltercondition')->where($where)->get();
                  return $getNoticeList;
    		break;
    		// 已参加的萌娃数据库获取
    		case 'alreadyJoinChild':
    			  $alreadyJoinChild = DB::table('alreadyjoinchild')->where($where)->get();
                  echo $alreadyJoinChild;
    		break;
    		// 公告筛选地区数据库获取
    		case 'getNoticeFilterPlace':
    			  $getNoticeFilterPlace = DB::table('getnoticeFilterplace')->where($where)->get();
                  echo $getNoticeFilterPlace;
    		break;
    		// 热门通告数据库获取
    		case 'geHotNotice':
    			  $geHotNotice = DB::table('gehotnotice')->get();
                  echo $geHotNotice;
    		break;
    		// 热门通告详情据库获取
    		case 'getNoticeDetail':
    			  $getNoticeDetail = DB::table('getnoticedetail')->where($where)->get();
    			  $getNoticeDetailJob = DB::table('getnoticedetailjob')->where($where)->get();
    			  $getNoticeDetailBabys = DB::table('getnoticedetailbabys')->where($where)->get();
    			  $getNoticeDetailMain=['id'=>json_decode($getNoticeDetail,true),'job'=>json_decode($getNoticeDetailJob,true),'babys'=>json_decode($getNoticeDetailBabys,true)];
                  echo json_encode($getNoticeDetailMain);
    		break;
    		//  获取报名时童星角色的价格类型数据库获取
    		case 'getEnrollChildPriceType':
    			  $getEnrollChildPriceType = DB::table('getenrollchildpricetype')->where($where)->get();
                  echo $getEnrollChildPriceType;
    		break;
    		// 报名数据库获取
    		case 'enroll':
    			  $Enroll = DB::table('enroll')->where($where)->get(['code','msg','intergal']);
                  echo $Enroll;
    		break;
    		// 获取公告筛选条件
    		case 'getNoticeFilterCondition':
    			  $getNoticeFilterCondition = DB::table('getnoticelist')->where($where)->get(['id','placeTop','title','talk_pay','film','place','people','endtime','time']);
                  echo $getNoticeFilterCondition;
    		break;

    	}
    }

/**
 * 公告类各接口函数
 */
    // 获取已参加的萌娃
    public function alreadyJoinChild(){
    	$this->SQLSelect('alreadyJoinChild',['id'=>request('id'),'noticeid'=>request('noticeid')]);
    }
    // // 获取公告列表
    public function getNoticeList(){
         // 获取给前端的数据格式为[{'':'','data':[{},{}]},{},{}]
    	return json_encode([
            $this->SQLSelect('getNoticeList',['id'=>28]),
                $this->SQLSelect('getNoticeList',['id'=>27]),
                    $this->SQLSelect('getNoticeList',['id'=>29]),
                        $this->SQLSelect('getNoticeList',['id'=>30])
                            ]);
    }
    // 获取公告筛选地区
    public function getNoticeFilterPlace(){
    	$this->SQLSelect('getNoticeFilterPlace',['city'=>request('city')]);
    }
    // 上传图片测试
    public function unloadImgTest(request $request){
           $file = $request->file('file');
        // 文件是否上传成功
        
        if ($file->isValid()) {

            // 获取文件相关信息
            $originalName = $file->getClientOriginalName(); // 文件原名
            $ext = $file->getClientOriginalExtension();     // 扩展名
            $realPath = $file->getRealPath();   //临时文件的绝对路径
            $type = $file->getClientMimeType();     // image/jpeg

            // 上传文件
            $filename = date('Y-m-d-H-i-s') . '-' . uniqid() . '.' . $ext;
            // 使用我们新建的uploads本地存储空间（目录）
            //这里的uploads是配置文件的名称
            $bool = Storage::disk('uploads')->put($filename, file_get_contents($realPath));
            $path ='/uploads/'.$filename;
            return ['url'=>$path];
       }
        
      
    }
    // 获取公告筛选条件
    public function getNoticeFilterCondition(request $request){
    	$res = $request->all();
    	$this->SQLSelect('getNoticeFilterCondition',$res);
    }
    // 获取热门公告
    public function geHotNotice(){
    	$this->SQLSelect('geHotNotice',null);
    }
    // 获取通告详情
    public function getNoticeDetail(){
    	$this->SQLSelect('getNoticeDetail',['id'=>request('id')]);
    }
    // 获取报名时童星角色的价格类型
    public function getEnrollChildPriceType(){
    	$this->SQLSelect('getEnrollChildPriceType',['noticeid'=>request('noticeid')]);
    }
    // 报名
    public function enroll(){
    	$this->SQLSelect('enroll',['babyid'=>request('babyid'),'type'=>request('type'),'noticeid'=>request('noticeid'),'nstarid'=>request('nstarid'),'contacts'=>request('contacts'),'contactmode'=>request('contactmode')]);
    }


}





 ?>