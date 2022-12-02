
//泛型：解决 类，接口，方法的复用性，以及对不特定数据类型的支持（类型校验）

T getData<T>(T value){    //泛型方法
  return value;
}


//泛型接口
//实现数据缓存的功能，有文件缓存，和内存缓存，内存缓存和文件缓存按照接口约束实现
//1.定义一个泛型接口，约束实现他的子类必须有getByKey(key)和setByKey(key,value)
//2.要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}
//文件缓存
class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {  }

  @override
  void setByKey(String key, value) {
    print('我是文件缓存，把key= $key,value= $value 的数据写入到了文件中');
  }
}
//内存缓存
class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存，把key= $key,value= $value 的数据写入到了内存中');
  }
}


 main(){
   print(getData(16));  //16
   print(getData('fsfsfs'));     //fsfsfs
   print(getData<String>('指定类型'));   //指定类型




   //泛型接口
  MemoryCache m = new MemoryCache();
  m.setByKey('index', 123);   //我是内存缓存，把key= index,value= 123 的数据写入到了内存中

   MemoryCache m2 = new MemoryCache<Map>();    //要求传入对象的类型
   m.setByKey('index', {'对象键':'对象值'});  //我是内存缓存，把key= index,value= {对象键: 对象值} 的数据写入到了内存中

 }