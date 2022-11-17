
class Person1{
  //  静态属性和静态方法
//  1.在属性或者方法前加  static
//  2.静态方法不能访问非静态成员，非静态方法可以访问静态成员
  static String name = '张三';
  static void show(){
    print('$name---------');
  }
}

class Person2{
  static String name = '张三2';
  int age = 20;

  void printInfo(){     //静态方法可以访问静态属性和非静态属性
    print(name);     //访问静态属性
    print(this.age);   //访问非静态属性
  }

}


main(){
//  调用静态属性或者静态方法
print(Person1.name);
Person1.show();


Person2 p = new Person2();
p.printInfo();

}