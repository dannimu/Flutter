main(){
// 1. List
  //1.1 List常见的属性
  List mylist = ['香蕉','苹果','西瓜'];
  print(mylist.length);
  //判断集合是否为空
  print(mylist.isEmpty);     //false
  //集合里面的元素进行翻转
  print(mylist.reversed);      //(西瓜, 苹果, 香蕉)
  //把其他类型转换成集合类型
  var newmylist = mylist.reversed.toList();
  print(newmylist);        //[西瓜, 苹果, 香蕉]

  //1.2  List常见的方法
  List list = ['香蕉','苹果','西瓜'];
  list.add('榴莲');      //add()每次只能增加一个元素
  print(list);        //[香蕉, 苹果, 西瓜, 榴莲]

  list.addAll(['yaya','hihi','fiufi']);      //addAll(['','']); 可以增加多个元素，拼接数组
  print(list);      //[香蕉, 苹果, 西瓜, 榴莲, yaya, hihi, fiufi]

  list.remove('yaya');     // remove()  删除一个元素
  print(list);     //[香蕉, 苹果, 西瓜, 榴莲, hihi, fiufi]

//2.Set 没有顺序不能重复的集合，所以不能通过索引去获取值。     去除数组重复内容
  var str = new Set();
  str.add('Set');
  str.add('用法');
  print(str);     //{Set, 用法}

  str.add('用法');
  print(str);   //还是  {Set, 用法}    相同元素无法重复添加

  print(str.toList());  //[Set, 用法]  将Set类型转换成List类型

  // 如果是List集合，可以添加相同的元素
 List myname = ['list','相同'];
 myname.add('相同');
 print(myname);     //[list, 相同, 相同]

  //给List数组去重
  var newname = new Set();
  newname.addAll(myname);
  print(newname);    //{list, 相同}
  print(newname.toList());   //[list, 相同]



//map 类型
//  Map常用的属性
var person = {
  "name":"Map学习",
  "age":"18",
  "gender":"女",
};
  print(person);  //{name: Map学习, age: 18, gender: 女}
  print(person.keys);    //(name, age, gender)    获取 键
  print(person.keys.toList());    //[name, age, gender]     以List的形式获取 键

  print(person.values);   //(Map学习, 18, 女)       获取  值
  print(person.values.toList());  //[Map学习, 18, 女]   以List的形式获取 值

  //  Map常用的方法
  //添加键值对
   person.addAll({
      "在Map里添加键1":"在Map里添加值1",
      "在Map里添加键2":"在Map里添加值2",
   });
  print(person.keys);  //(name, age, gender, 在Map里添加键1, 在Map里添加键2)
  print(person.keys.toList());  //[name, age, gender, 在Map里添加键1, 在Map里添加键2]

  print(person.values);  //(Map学习, 18, 女, 在Map里添加值1, 在Map里添加值2)
  print(person.values.toList());  //[Map学习, 18, 女, 在Map里添加值1, 在Map里添加值2]

  //删除键值对
  person.remove("age");
  print(person);    //{name: Map学习, gender: 女, 在Map里添加键1: 在Map里添加值1, 在Map里添加键2: 在Map里添加值2}

  //遍历
  //forEach()
  List list1 = ['香蕉','苹果','西瓜'];
  list1.forEach((value) {
    print(value);     //香蕉  苹果   西瓜
  });

  //map()
  var newlist = list1.map((value){
    return "$value xxx";
  });
  print(newlist); //(香蕉 xxx, 苹果 xxx, 西瓜 xxx)
  print(newlist.toList());  //[香蕉 xxx, 苹果 xxx, 西瓜 xxx]

  //where（）
  var list2 = [1,2,3,5,6,7,9,6,9];
  var newlist2 = list2.where((element){
    return element > 5;
  });
  print(newlist2);   //(6, 7, 9, 6, 9)

  var person2 = {
    "name":"Map学习",
    "age":"18",
    "gender":"女",
  };

  //遍历出来结果：name,Map学习
  // 遍历出来结果：age,18
  // 遍历出来结果：gender,女
  person2.forEach((key, value) {
    print("遍历出来结果：$key,$value");
  });








}