import 'package:flutter/material.dart';
import 'package:stopwatch/stopWatch.dart';

void main() {
  runApp(MyApp());
}

final darkNotifier = ValueNotifier<bool>(false);

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //theme: ThemeData.dark() ,
//       home: WatchStop(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: darkNotifier,
      builder: (BuildContext context, bool isDark, Widget? child){
        return MaterialApp(
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData.dark(),
          home: WatchStop(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}


