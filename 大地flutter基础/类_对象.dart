//dart里面构造函数可以写多个
//class 后面的对象名首字母必须大写

import '../day01/02.声明变量.dart';

class Person {
   late String name;
   late int age;

  //1.1默认构造函数 全写
  // Person(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }
  //1.2默认构造函数 简写   (只能写一个)
  Person(this.name, this.age);

  //2.1命名构造函数    (可以写多个)
  Person.now() {
    print('我是now命名构造函数');
  }

  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
    print('我是setInfo命名构造函数');
  }

  @override
  String toString() {
    return "$name, $age";
  }
}

main() {
//  实例化
// 1.调用默认函数
  Person p1 = new Person('默认构造函数', 20); //默认情况触发的是默认函数
  print(p1.name);   //默认构造函数
  print(p1.age);    //20
  print(p1.toString());    //默认构造函数, 20

// 2.调用命名构造函数
  Person p2 = new Person.now();
  // print(p2);

  Person p3 = new Person.setInfo('命名构造函数setInfo', 30);
  print(p3);    //命名构造函数setInfo, 30



}
