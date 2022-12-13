//1.入算法库
import 'dart:math';


//2. async 是让方法变成异步
// await 是等待异步方法执行完成
// 异步方法
testAsync() async{
  return "变成异步方法";
}

//3.引入第三方库（是托管到pub的包管理系统里面的）



void main () async{

  //1.引入算法库 ，求两个数的最小数
  print(min(25, 66));


  //2. await 是让方法变成异步    获取异步方法里面的数据
  var result = await testAsync();
  print(result);


}