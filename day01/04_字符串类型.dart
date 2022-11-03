main(){
  //1.定义字符串
  var str1 = '可以使用单引号';    //可以使用单引号
  var str2 = "也可以使用双引号";    //也可以使用双引号

  //使用三对双引号，三引号里面的东西可以任意换行
  var str3 = """
  使用三对双引号
  三引号里面的东西可以任意换行
  """;
  print(str3);       //print();可以把变量或者常量的值打印到控制台中

  // 2.字符串和表达式进行拼接
  var name = 'yaya';
  var age = 18;
  var height = 1.78;
  //2.1.1 ${变量}
  var message1 = "name is ${name}, age is ${age}, height is ${height}";
  //2.1.2 ${变量}，那么{}可以省略
  var message2 = "name is $name";
  print(message1);   //控制台返回结果：name is yaya, age is 18, height is 1.78
  print(message2);   //控制台返回结果：name is yaya

  //2.2.1 ${变量.runtimeType}    可以获取到变量类型
  var message3 = "name is ${name},type is ${name.runtimeType}";
  print(message3);  //控制台返回结果：name is yaya,type is String
  // 2.2.2 ${表达式}  那么{}不可以省略   表达式会被直接当做字符串打印出来
  var message4 = "name is $name,type is $name.runtimeType";
  print(message4);  //控制台返回结果：name is yaya,type is yaya.runtimeType

  // 3.直接用String指定字符串类型
  String  result1 = '直接用String指定字符串类型1';
  print(result1);

  //使用三对双引号，三引号里面的东西可以任意换行
  String result2 = """
  直接用String指定字符串类型2
  使用三对双引号
  三引号里面的东西可以任意换行
  """;
  print(result2);
  print(result1 + result2);
  print('$result1 $result2');
  print("这是$result1,那是$result2");

}