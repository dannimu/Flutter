abstract class Db{        //这是一个抽闲类，当做一个接口   接口就是约定
  late String uri;           //数据库的链接地址    uri:统一资源标志符
  add(String data);       //可以给 data 参数设置需要的类型
  save();          //保存数据
  delete();        //删除数据
}