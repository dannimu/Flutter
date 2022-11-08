main() {
  // test(bar);

  //  匿名函数
  test(() {
    print('匿名函数');
    return 20;
  });

  //  箭头函数：条件，函数体只有一行代码
  test(() => print('箭头函数'));

  // 变量.forEach()    遍历数组
  //  匿名函数
  List list = ['苹果', '香蕉', '西瓜'];
  list.forEach((element) {
    print('$element====='); //苹果=====   香蕉=====    西瓜=====
  });

  //  箭头函数：条件，函数体只有一行代码
  list.forEach((element) => print(element)); //苹果   香蕉    西瓜

// 需求：修改下面List集合里面的数据。让数组中大于2的值乘以2
  List num = [1, 2, 3, 4, 5, 6, 7, 8];
  var newNum1 = num.map((e) {
    if (e > 2) {
      return e *= 2;
    }
    return e;
  });
  print(newNum1); //(1, 2, 6, 8, 10, 12, 14, 16)

//箭头函数
  var newNum2 = num.map((e) => e > 2 ? e *= 2 : e); //(1, 2, 6, 8, 10, 12, 14, 16)
  print(newNum2);

//定义一个方法isEvenNum来判断一个数是否是偶数
  String isEvenNum1(int num) {
    if (num % 2 == 0) {
      return '$num 是偶数';
    }
    return '$num 是基数';
  }

  ;
  print(isEvenNum1(16));

//箭头函数和匿名方法
//   isEvenNum2((int num) => num%2==0 ? '$num 是偶数' : '$num 是基数');   错误
  var isEvenNum2 = (int num) => num % 2 == 0 ? '$num 是偶数' : '$num 是基数';
                //  () => xxx
  print(isEvenNum2(49));

//定义一个方法打印1-N以内的所有偶数
  isEven(int n) {
    for (var i = 1; i <= n; i++) {
      if (i % 2 == 0) {
        print('偶数 $i');
      }
    }
    return '454545';
  };
  print(isEven(19));
}

//函数可以作为另外一个函数的参数
void test(Function foo) {
  // foo();
  var result = foo();
  // print(result);
}

void bar() {
  print('bar函数被调用');
}
