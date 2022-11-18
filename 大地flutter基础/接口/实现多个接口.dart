
//一个类实现多个接口

abstract class Kind1 {
  late String name;
  getInfo1();          //抽象方法
}

abstract class Kind2 {
  getInfo2();           //抽象方法
}

class Transfer implements Kind1,Kind2{      //Transfer一个类实现Kind1,Kind2两个接口

  @override
  late String name;

  @override
  getInfo1() {
    // TODO: implement getInfo1
    print('Kind1接口里面的getInfo1方法');
  }

  @override
  getInfo2() {
    // TODO: implement getInfo2
    print('Kind2接口里面的getInfo2方法');
  }

}



void main(){
  Transfer t = new Transfer();
  t.getInfo1();   //Kind1接口里面的getInfo1方法
  t.getInfo2();   //Kind2接口里面的getInfo2方法
}