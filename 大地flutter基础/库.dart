
// async 是让方法变成异步
// await 是等待异步方法执行完成


// 异步方法
testAsync() async{
  return "变成异步";
}


void main () async{
  var result = await testAsync();
  print(result);
}