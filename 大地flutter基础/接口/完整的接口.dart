// 3.接口    implements 关键词
//建议使用抽象类定义接口

//定义一个DB库，支持 mysql  mssql  mongodb
//mysql  mssql  mongodb 三个类里面都有同样的方法

abstract class Db{        //这是一个抽闲类，当做一个接口   接口就是约定
  late String uri;           //数据库的链接地址    uri:统一资源标志符
  add(String data);       //可以给 data 参数设置需要的类型
  save();          //保存数据
  delete();        //删除数据
}
//Mysql接口
class Mysql implements Db{    //使用implements 关键词
  @override
  late String uri;   //uri:统一资源标志符

  Mysql(this.uri);   //刚实例化的时候就要连接数据库   默认构造函数

  @override
  add(String data) {
    // TODO: implement add
    print('这是Mysql的add方法'+data);
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }
}

//MsSql接口
class MsSql implements Db{     //使用implements 关键词
  @override
  late String uri;    //uri:统一资源标志符

  @override
  add(String data) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }
}



main(){
  // 3.接口
  Mysql Mysqls = new Mysql('此处写需要传入的数据库地址');
  Mysqls.add('+参数data的数据');     //这是Mysql的add方法+参数data的数据

}