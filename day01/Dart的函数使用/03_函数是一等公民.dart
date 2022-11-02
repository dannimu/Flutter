main(){
  test(bar);

//  匿名函数
  test(() {

  });

}


//函数可以作为另外一个函数的参数
void test(Function foo){
  foo();
  print(foo());
}

void bar(){
  print('bar函数被调用');
}