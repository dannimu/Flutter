main(){
  //sum(60,40) 是实参
  print(sum(20,50));    //终端返回结果为：70


  //在main里面写函数
  //定义数字类型的方法
  int getNum(){
    var myNum = 123;   //必须是数字类型
    return myNum;
  }
  print(getNum());      //123

  //定义字符串类型的方法
  String printInfo(){
    // return 123;     //错误。必须是字符串类型
    return '定义字符串类型的方法';
  }
  print(printInfo());

  //定义List类型的方法
  List getList(){
      return ['定义List类型的方法','asa','dss'];     //必须是List集合的形式
  }
  print(getList());   //[定义List类型的方法, asa, dss]

//1.定义一个方法，求1到这个数的所有数的和
int sunNum(int num1,int num2){
  var result = 0;
  for(var i = num1;i <= num2;i++){
    result += i;
  }
  return result;
}
print(sunNum(0,100));

//2.定义一个方法然后打印用户信息
printUser(String username,int age){
  return '姓名：$username， 年龄：$age';
}
var a = printUser('yaya',15);
print(a);







}


//在main外面写函数
//在dart里面定义一个有参数和返回值的函数
//(int num1, int num2)是形参
int sum (int num1, int num2){
  return num1+num2;
}
