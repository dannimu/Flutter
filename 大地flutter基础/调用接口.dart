
import '接口/MySql接口.dart';
import '接口/MsSql接口.dart';

main(){
  // 3.接口
  Mysql Mysqls = new Mysql('此处写需要传入的数据库地址');   //Mysql有默认构造函数   可以直接传参数
  Mysqls.add('+Mysql参数data的数据');     //这是Mysql的add方法+参数data的数据

  MsSql MsSqls = new MsSql();
  MsSqls.uri= '123.0.0.6';         //MsSqls 没有构造函数   所以可以这样写
  MsSqls.add('+MsSql参数data的数据');    //这是MsSql的add方法+MsSql参数data的数据
}

