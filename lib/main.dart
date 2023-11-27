import 'package:flutter/material.dart';
import './style.dart';

// ThemeData 특징: 위젯은 나랑 가까운 스타일을 가장 먼저 적용
// 복잡한 위젯은 복잡한 위제 theme()안에서 스타일 줘야할 수도 있다.
void main() {
  runApp(MaterialApp(
    theme: theme,
    home: MyApp()),
  );
}

var a = TextStyle();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.star)],),
      body: Text('안녕', style: Theme.of(context).textTheme.bodyText2,),
    //   변수로 축약해서 쓰는게 나을 수도(특히 글자는!!)
    );
  }
}
