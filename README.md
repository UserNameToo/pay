# pay
微信免签服务端+exe监测端

1、在mysql建库名字叫2，将2.sql还原到数据库2

2、修改config文件夹database.php的数据库配置

3、修改\public\example 里面的3个php文件的签名sign配置，必须与网站配置信息一致


4、运行exe监控软件，扫码登录你的微信，如果登录后被退出去，请打开ie浏览器清楚cookie

![Image text](https://raw.githubusercontent.com/aliffffff/pay/master/QQ%E5%9B%BE%E7%89%8720190630135742.png)

5、登录后，在exe填写的你的网站域名，填写你的签名，点击右边的【设定】

6、exe的签名配置、网站系统配置签名、\public\example 里面的3个php的签名都必须一致

原来是根据付款金额-0.01，这样区分不同的订单，不需要手机作为监控，反正我手机是监测不来通知栏的金额，我改成一个exe监控，全部都跑在服务器上。
