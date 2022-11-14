class Person{
  String name = '张三';
  int age = 18;
  getInfo(){
    print('$name----$age');
  }
}

main(){
  //实例化
  var p1 = new Person();
  p1.getInfo();     //  张三----18

  Person p2 = new Person();
  print(p2.name);    //  张三





}