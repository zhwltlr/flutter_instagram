# flutter_instagram

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

## 1. ThemeData()
모든 위젯을 한 번에 스타일 넣을 수 있게 MaterialApp() 안에 ThemeData()를 넣어준다.
#### 통일성 있는 UI 디자인을 원하면 ThemeData 활용하는 것이 좋다.
```bash
MaterialApp(
  theme : ThemeData(
      # 모든 아이콘이 같은 색이 된다.
      iconTheme: IconThemeData(color: Colors.red, size: 60),
      # 모든 배경색이 grey가 된다.
      appBarTheme: AppBarTheme(
        color: Colors.grey,
      ),
    ),
  home : MyApp()
)
```
- 만약 스타일 중복이 발생하면 가장 가까운 위젯을 찾아 스타일을 적용한다.
- 복잡한 위젯은 그 위젯 안에서 스타일을 넣어야 잘 작동이 된다.
    - Dialog() 스타일 넣으려면 dialogTheme: DialogTheme(), 
    - SnackBar() 스타일 넣으려면 snackBarTheme : SnackBarThemeData(), 
    - TimePicker() 스타일 넣으려면 timePickerTheme: TimePickerThemeData(),


텍스트의 스타일을 변경하고 싶을 경우
```bash
ThemeData(
  textTheme: TextTheme(
    bodyText2: TextStyle(
        color : Colors.blue,
    ),
  ),
)
```
But!!! Text 위젯은 bodyText2 스타일, AppBar와 Dialog 위젯은 headline6, ListTile 위젯은 subtitle1을 사용한다
따라서 텍스트의 스타일은 변수에 저장하여 사용하는 것이 더 좋다

## 2. import variable from other file
lib 디렉토리 안에 `blahblah.dart`을 만들어서 import 한다.
```
(ex => style.dart 파일)
import 'package:flutter/material.dart'; // 기본 위젯이 담긴 패키지이므로 import 해주어야 한다.
var theme = ThemeData( 
  // ThemeData
)

(main.dart 파일)
import 'style.dart' as style;
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  ...
```
- 다른 파일에 있는 변수, 함수, 클래스를 import할때는`import 'path' as naming`
- 다른 파일에서 변수를 사용하기 싫다면 `_data`와 같은 방식으로 작명해준다.


ThemeData에서 버튼 디자인 변경하는 방법
```
ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.orange,
    )
  ),
) 
```

하위 ThemeData() 생성하는 방법
```
Container( 
  child : Theme(
    data : ThemeData(~~~),
    child : Container(
        // blahblah
    )
  )
)
```

#### ThemeData() 안의 특정 스타일 불러오기
```
Text('test', style: Theme.of(context).textTheme.bodyText1)
```