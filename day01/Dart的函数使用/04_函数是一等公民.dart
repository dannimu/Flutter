main() {
  test1(() {
    print("123");
    return "456";
  });
  
  test2((num1,num2) {
    return num1+num2;
  });

  test3((num1,num2) {
    return num1+num2;
  });

//  var test4 = test4();
//   print(test4(20,60));

//把方法当做参数的方法
fn1(){
  print('fn1');
}
fn2(fn){    //形参
  fn();
}
fn2(fn1);   //实参



}

void test1(Function foo) {
  foo();
  print(foo());
}

void test2(int foo(int num1,int num2)){
  // foo(55,33);
  print(foo(55,33));
}

typedef Calculate = int Function(int num1,int num2);
void test3(Calculate calc){
  calc(20,30);
}

// Calculate test4(){
//   return（num1,num2）{
//     return num1+num2;
//   }
// }