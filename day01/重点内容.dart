main(){
  //1.1 数组去重  Set.from(name).toList() 返回值是dynamic类型。不能直接赋值给name
  var name = ['2443','wrw','2443','gsg'];
  var a = Set.from(name).toList();
  print(a);  //控制台返回：[2443, wrw, gsg]

  //1.2 数组去重   Set<String> 强行把结果变成String类型。就可以赋值给name
  name = Set<String>.from(name).toList();
  print(name);

  //1.3 变量.runtimeType;    可以打印出来变量的类型
  var b = Set.from(name).toList().runtimeType;
  print(b);




  //1.定义isEvenNum函数isEvenNum来判断一个数是否是偶数
  //2.定义printNum1函数打印1-n以内的所有偶数
  bool isEvenNum(int n){
    if(n%2==0){
      return true;
    }
    return false;
  }
  //在printNum1（）函数里面调用isEvenNum（）函数
  printNum1(int n){
    for(var i = 0; i<=n; i++){
      if(isEvenNum(i)){
        print(i);
      }
    }
  }
  printNum1(12);



// 3. implements可以实现同时调用多个接口
//    extends无法实现同时实现多个继承类
//    with   可以实现同时实现多个继承类



  // var newSn =15616;
  // var data = [
    // {
    //   sn:1,
    //   name:'你好'，
    // }，
    // {
    // sn:15616,
    // name:'来了来了，
    // }，
  // ]

  //需要对象里面sn和15616相等
  // let newItem = data.filter(value => value.sn === newSn)
  //取数组括号。变成对象形式
  // item.value = Array.isArray(newItem) && newItem.length > 0 ? newItem[0] : {}







}