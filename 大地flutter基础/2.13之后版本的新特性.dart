
main(){
  //1.空安全：null safety    ?
  int? a = 123;   //表示非空的int类型
  a = null;      //int?  可空类型
  print(a);

  String username = '张三';
  print(username);


  //2.类型断言   !
  // String? str = "你好，明天";
  // str = null;
  // print(str!.length);      //类型断言：如果str不等于null.会打印str长度。 如果等于null会抛出异常


  //3.late关键词









}