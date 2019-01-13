一、token接口权限

1、composer remove doctrine/instantiator  //7.1  ==>  7.0

2、composer require laravel/passport

//php  composer 相当于 node的npm

3、php artisan migrate
这一步注意，执行的时候可能会报错

    Syntax error or access violation: 1071 Specified key was too long; max key length is 767 byte

这是由于 Laravel5.4默认使用utf8mb4 编码
utf8 最大长度字符是3字节 utf8mb4是4字节



4、php artisan passport:install


5、完成上面步骤，我们来配置下Passport

    打开 模型 app/User.php 我们需要增加 HasApiTokens
    打开 app/Providers/AuthServiceProvider.php 中增加 Passport::routers()
    在 config/auth.php 中，更改 api 认证方式为 password

具体参考：https://laravel-china.org/articles/10188/laravel-55-uses-passport-services-to-do-api-authentication


6、配置 routes/api.php 增加相应路由令牌


7、接下来创建控制器


8、注册后、登录调用

 $.post("http://localhost/laravel55/public/api/login",{
                email:'332@qq.com',
                password:'12345',
            },function (rtn) {
                $.ajax({
                    url:"http://localhost/laravel55/public/api/info",
                    type:"post",
                    dataType: 'json',
                    headers: {'Authorization': 'Bearer '+rtn.success.token} ,
                   
                })
            })




二、跨域

1、新建一个中间件

php artisan make:middleware EnableCrossRequestMiddleware

2、书写中间件内容 

具体请移步
https://laravel-china.org/articles/6504/laravel-cross-domain-solution