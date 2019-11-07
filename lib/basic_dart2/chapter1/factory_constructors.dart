/**
 * @Author: 雷◕‿◕宇
 * @Description: 工厂构造方法
 * @Date: 2018/10/29
 */
class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    print(msg);
  }
}
