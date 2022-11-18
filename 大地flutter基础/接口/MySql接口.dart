
import 'Db.dart';

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