//前面加 void，表示main方法没有返回值
void main(){
//  1.字符串类型    （day01文件夹里有详细记录）

//  2.数字类型   int和double
  //2.1  int  整形
  int a = 19;
  a = 123;          //正确 123     int只能定义整形
  print(a);

  // int a2 = 6.55;    错误。int不能定义浮点型
  // print(a2);

  //2.2  double  整形和浮点型
  double b = 461;
  b = 192;   //正确  192.0   double可以定义整形
  print(b);

  double b2 = 2.333;
  b2 = 4845.66;   //正确  4845.66   double可以定义浮点型
  print(b2);

  //2.3  运算符   + - * / %
  var c =  b + b2;
  print(c);      //5037.66


//  3.布尔类型     bool  值为  true或者false
    bool flag = true;    //true
    print(flag);

    // bool yaya = 123;    错误写法
    // print(yaya);

    //  条件判断语句
   var event = true;
   if(event){
     print('语句为真');
   }else{
     print('语句为假');
   }

   var aa = 123;
   var bb = '123';
   if(aa == bb){
     print("123 等于'123'");
   }else{
     print("123 不等于 '123'");     //结果为： 123不等于'123'
   }


// 4.  字符串类型   （day01文件夹里有详细记录）

// 5.   Maps类型   （day01文件夹里有详细记录）

}