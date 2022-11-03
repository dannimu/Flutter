main(){
  // test(bar);

  //  匿名函数
  test(() {
    print('匿名函数');
    return 20;
  });

  //  箭头函数：条件，函数体只有一行代码
  test(() => print('箭头函数'));


}

 
//函数可以作为另外一个函数的参数
void test(Function foo){
  // foo();
  var result = foo();
  // print(result);
}

void bar(){
  print('bar函数被调用');
}