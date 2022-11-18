
//1. abstract    抽象类
//抽象类不发直接实例化

//定义一个 Animal 类要求它的子类必须包含 eat 方法
abstract class Animal{       //前面加了abstract  变成抽象类
  eat();     //抽象方法
  run();     //抽象方法
  printInfo(){
    print('printInfo 是抽象类里面的普通方法');
  }
}
//子类 小狗
class Dog extends Animal{
  @override
  eat() {
    print('子类Dog继承父类eat的抽象方法');
  }
  @override
  run() {
    print('子类Dog继承父类run的抽象方法');
  }
}
//子类 小猫
class Cat extends Animal{
  @override
  eat() {
    print('子类Cat继承父类eat的抽象方法');
  }
  @override
  run() {
    print('子类Cat继承父类run的抽象方法');
  }
}




// 2.多态   子类的实例赋值给父类的引用
//父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不用的表现
abstract class Person{
  eat();
}
class Str extends Person{
  @override
  eat() {
    print('多态：父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不用的表现--Str');
  }
}
class Poly extends Person{
  @override
  eat() {
    print('多态：父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不用的表现--Poly');
  }
  run(){
    print('类Poly自己的run方法');
  }
}


main(){
  Dog d = new Dog();
  d.eat();    //子类继承父类eat的抽象方法
  d.printInfo();     //printInfo 是抽象类里面的普通方法

  Cat c = new Cat();
  c.run();      //子类Cat继承父类run的抽象方法
  c.printInfo();    //printInfo 是抽象类里面的普通方法

  //会报错，抽象类无法直接实例化   必须子类继承在实例化
  // Animal a = new Animal();

  //2.多态
  Str s = new Str();
  s.eat();   //多态：父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不用的表现--Str
  Poly p = new Poly();
  p.eat();  //多态：父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不用的表现--Poly
  p.run();   //子类Poly自己的run方法

  //表示把子类的实例赋值给了父类
  Person p6 = new Poly();
  p6.eat();        //只能调用父类里面定义的eat方法     子类Poly里面定义的run方法无法调用


}