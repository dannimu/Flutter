
import 'Db.dart';

//MsSql接口
class MsSql implements Db{     //使用implements 关键词
  @override
  late String uri;    //uri:统一资源标志符

  @override
  add(String data) {
    // TODO: implement add
    print('这是MsSql的add方法'+data);
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

