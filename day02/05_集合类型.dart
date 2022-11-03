main(){
  //List类型

  //1.列表  [];
  var name = ['2443','wrw','2443','gsg'];  // name是数组，是String类型
  print(name.length);

  //1.1.1 数组去重  Set.from(name).toList() 返回值是dynamic类型。不能直接赋值给name
  var a = Set.from(name).toList();
  print(a);  //控制台返回：[2443, wrw, gsg]

  //1.1.2 数组去重   Set<String> 强行把结果变成String类型。就可以赋值给name
  name = Set<String>.from(name).toList();
  print(name);   //控制台返回：[2443, wrw, gsg]

  //1.2 给数组添加元素
  name.add('给数组添加了这个元素');
  print(name);

  //1.4 变量.runtimeType;    可以打印出来变量的类型
  var b = Set.from(name).toList().runtimeType;
  print(b);   //终端打印结果为：List<dynamic>


  //1.5 指定数组的类型
  var qq = <String>['hdhd','AEA','RETE','YTUT'];   //[hdhd, AEA, RETE, YTUT]
  print(qq);

  // var ww = <int>['guig',55,88,666];     错误。指定int类型。数组里面不能出现字符串类型
  // print(ww);

  //2.集合Set   {};
  var movies = {'春','夏','秋','冬'};


  //3.映射Map  {};
  var info = {
    'name' :'hi',
    'age':'18',
    'color':'red',
  };
  print(info);
  print(info['name']);
}