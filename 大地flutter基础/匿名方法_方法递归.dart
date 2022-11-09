main(){
//  匿名函数
var printNum=(int n){
  print(123+n);
};
printNum(15);   //138


//自执行方法       (( ){ })();
  ((){
    print('自执行方法');
  })();

  ((int n){            //形参
    print('$n 是自执行方法');
  })(12);              //实参



//通过方法的递归求1-100的和
  var sum = 0;
  fn(int n){
    sum+=n;
    if(n==0){
      return ;
    }
    fn(n-1);         //方法里面调用他自己
  }
  fn(10);
  print(sum);










}