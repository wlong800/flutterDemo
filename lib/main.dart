import 'package:flutter/material.dart';

/**
 * 标注1：StatelessWidget：无状态 传过来什么，显示什么
 * 标注2: StatefulWidget:有状态 需要记住用户行为
 * 理解：看图a_1,a_2
 *
 * 标注3: Widget -> Android 的View，初步这么理解
 * 标注4：build -> createView的动作
 * 标注5: BuildContext -> Context 上下文，这个差不多
 * 标注6: MaterialApp 理解为一个全局的脚手架，里面可以设置主题...
 * 标注7: theme，类似android的主题
 * 标注8: 真正要展示给用的入口，类似android 中的splashActivity
 */

///程序入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget/*标注1*/ {
  // This widget is the root of your application.
  @override
  Widget/*标注3*/ build/*标注4*/(BuildContext/*标注5*/ context) {
    return MaterialApp/*标注6*/(
      title:'Flutter Demo',
      theme:/*标注7*/ ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:/*标注8*/ MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget/*标注2*/ {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Text("aaa");
  }

}
