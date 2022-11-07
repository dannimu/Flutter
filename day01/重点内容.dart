main(){
  //1.1 数组去重  Set.from(name).toList() 返回值是dynamic类型。不能直接赋值给name
  var name = ['2443','wrw','2443','gsg'];
  var a = Set.from(name).toList();
  print(a);  //控制台返回：[2443, wrw, gsg]

  //1.2 数组去重   Set<String> 强行把结果变成String类型。就可以赋值给name
  name = Set<String>.from(name).toList();
  print(name);

  //1.3 变量.runtimeType;    可以打印出来变量的类型
  var b = Set.from(name).toList().runtimeType;
  print(b);

}