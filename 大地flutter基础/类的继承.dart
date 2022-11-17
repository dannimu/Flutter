//面向对象的三大特征：封装。继承。多态

//dart中的类的继承
//1.子类使用extends关键词来继承父类
//2.子类会继承父类里面可见的属性和方法，但是不会继承构造函数
//3.子类能复写父类的方法，  getter 和  setter

//父类1
class Person1 {
  String name = '张三';
  num age = 20;

  void printInfo() {
    print("${this.name}-------${this.age}");
  }
}
//子类1
//Web类就可以访问Person类里面共有的属性和方法
class Web1 extends Person1 {} //子类继承了父类

//父类2
class Person2 {
  String name;
  num age;

  Person2(this.name, this.age); //不会直接继承构造函数  给默认构造函数传参
  void printInfo() {
    print("${this.name}-------${this.age}");
  }
}
//子类2
class Web2 extends Person2 {
  Web2(super.name, super.age); //子类继承了父类  需要重新赋值 给默认构造函数传参
}

//父类3
class Person3 {
  String name;
  num age;

  Person3(this.name, this.age); //不会直接继承构造函数
  void printInfo() {
    print("${this.name}-------${this.age}");
  }
}
//子类3
class Web3 extends Person3 {
  late String sex;
  Web3(String name, num age, String sex) : super(name, age) {    //给默认构造函数传参
    this.sex = sex;
  }
  run() {
    print("${this.name}--${this.age}--${this.sex}");
  }
}


//父类4
class Person4{
  String name;
  num age;
  Person4(this.name,this.age);   //默认构造函数
  Person4.get(this.name,this.age);   //命名构造函数
  void printInfo() {
    print("${this.name}-------${this.age}");
  }
}
//子类4
class Web4 extends Person4 {
  late String sex;
  Web4(String name, num age, String sex) : super.get(name, age){   //给命名构造函数传参
      this.sex= sex;
  }
  void run(){
    print("${this.name}--${this.age}--${this.sex}");
  }
}



//在子类里面复写父类的方法
//父类5
class Person5{
  String name;
  num age;
  Person5(this.name,this.age);   //默认构造函数
  void printInfo() {
    print("${this.name}-------${this.age}");
  }
  work(){
    print("${this.name}在工作。。。");
  }
}
//子类5
class Web5 extends Person4 {
  Web5(super.name, super.age);
  void run(){
    print("${this.name}--${this.age}");
  }
  //  覆写父类的方法
  @override
  void printInfo(){
    print("覆写父类的方法:姓名：${this.name}--年龄：${this.age}");  //覆写父类的方法:姓名：Web5子类的方法--年龄：2
  }
  work(){
    print("覆写父类的方法:${this.name}在工作。。。");  //覆写父类的方法:Web5子类的方法在工作。。。
  }
}


main() {
//  实例化 Web
  Web1 w = new Web1();
  print(w.name); //张三      Web子类继承了Person父类里面的name
  w.printInfo(); //张三-------20   Web子类继承了Person父类里面的方法

  Person2 p = new Person2('王五', 12);
  print(p.name); //王五
  print(p.age); //12
  p.printInfo(); //王五-------12

  Web2 w2 = new Web2('yaya', 52);
  print(w2.name); //yaya
  w2.printInfo(); //yaya-------52

  Web3 w3 = new Web3('默认构造函数', 10, 'Web3在子类定义的变量');
  w3.run();   //name--10--sex

  Web4 w4 = new Web4('命名构造函数', 19, 'Web4在子类定义的变量');
  w4.run();

  Web5 w5 = new Web5('Web5子类的方法', 22);
  w5.printInfo();
  w5.work();







}
