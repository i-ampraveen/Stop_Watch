import 'package:flutter/material.dart';
import 'package:stopwatch/stopWatch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark() ,
      home: WatchStop(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyApp extends StatelessWidget {
//   final _darkNotifier = ValueNotifier<bool>(false);
//
//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: _darkNotifier,
//       builder: (BuildContext context, bool isDark, Widget? child){
//         return MaterialApp(
//           themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
//           darkTheme: ThemeData.dark(),
//           home: WatchStop(),
//           debugShowCheckedModeBanner: false,
//         );
//       },
//     );
//   }
// }


