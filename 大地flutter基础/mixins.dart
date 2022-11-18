
// 混入 ：mixins      在类中混入其他功能
// 在dert中可以使用 mixins 实现类似多继承的功能
//mixins 不是继承也不是接口， 是一种全新的特性

class A {
  late String info = "这是A类的info属性";
  printA(){
    print('A类的printA');
  }
}
class B {
  printB(){
    print('B类的printB');
  }
}

class C with A,B{   }   //C类同时继承A类和B类




main(){
  C c = new C();
  c.printA();    //A类的printA
  c.printB();    //B类的printB
  print(c.info);   //这是A类的info属性
}