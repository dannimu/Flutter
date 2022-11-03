main() {
//  1.明确声明
  String name = "why";

// 2.类型推导(var,final,const)
//  类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己的明确的类型

//2.1 var 声明变量
  var age = 88;
// age = "yaya"       类型不一致
  age = 22;

//2.2 final 声明常量     （实际项目中用的比较多）
  final height = 1.5455;
// height = 2.333;  错误写法   final 不能改变常量的值   常量是不可以修改的变量

//2.3 const 声明常量
  const add = "北京";
// add = "上海"     错误写法    const 不能改变常量的值   常量是不可以修改的变量

//2.4 final 和 const 的区别
// final 可以通过计算/函数获取一个值（运行期间来确定一个值）
  final data2 = DateTime.now(); //此写法为正确

// const 必须赋值，常量值（编译期间需要有一个确定的值）
// const date1 = DateTime.now();    此写法为错误，需要赋值一个确定的值

  final p1 = new Person("yayayaya"); //创建了一个Person的对象。并且将值赋值给p1
  final p2 = new Person("yayayaya"); //final p2 = new Person("yayayaya");   new可以省略
  //final定义的常量 p1,p2为两个不同的变量
  print(identical(p1, p2)); //可以判断两个对象是否相等，控制台运行结果为 false。

  const a1 = Year("2000"); //const a1 = const Year("2000");  const可以省略
  const a2 = Year("2000");
  const a3 = Year("500");
  //控制台运行结果为 ture。const定义的常量 p1,p2为两个相同的常量。有利于节省堆内存空间
  print(identical(a1, a2));
  //控制台运行结果为 false。const定义的常量 p2,p3为两个不同的常量
  print(identical(a2, a3));
}

class Person {
  String name = "你好";

  Person(String name) {
    this.name = name;
  }
}

class Year {
  final String name;

  const Year(this.name);
}
