
//泛型：解决 类，接口，方法的复用性，以及对不特定数据类型的支持（类型校验）

T getData<T>(T value){    //泛型方法
  return value;
}
void main(){
  print(getData(16));  //16
  print(getData('fsfsfs'));     //fsfsfs
  print(getData<String>('指定类型'));   //指定类型
}


//泛型接口
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}
class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, value) {
    // TODO: implement setByKey
  }
  
}
