main(){
  sayHello1('1.必选参数：必须传');
  sayHello2('2.第一个参数必须传',2,2.22);
  sayHello3('3.第一个参数必须传',age:3,height:3.33);
}


//dart中没有函数的重载   （方法名相同，函数名不同 。叫做函数的重载）
//dart中没有函数的重载   （方法名相同，函数名不同 。叫做函数的重载）

//1.必选参数：必须传
void sayHello1(String name){
  print(name);
}

//2.可选参数： 位置可选参数   命名可选参数
//2.1 位置可选参数
// 形参： [int? 变量, double? 变量]  这两个变量可传可不传，问号为参数的默认值
// 实参： sayHello2('2.第一个参数必须传',2,2.22);     对顺序有要求
// 实参位置可选参数变量前面不需要写变量名
// 传参时实参和形参位置和类型必须对应
//String name 为必选参数
void sayHello2(String name,[int? age, double? height]){
  print(height);
}

//2.2 命名可选参数
// 形参： {int? 变量, double? 变量}     问号为参数的默认值
// 实参： sayHello3('3.第一个参数必须传', height:3.33, age:3);   对顺序没有要求
// 实参命名可选参数变量前面必须写变量名
void sayHello3(String name,{int? age, double? height}){
  print(age);
}