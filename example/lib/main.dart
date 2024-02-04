import 'package:flutter/material.dart';
import 'package:select_widget/select_widget.dart';


import 'Theme/theme_values.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return   MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: currentMode,
            theme: appTheme,
            darkTheme: darkTheme,
            home:  DemoPage(),
          )
          ;
        });

  }
}

class DemoPage extends StatelessWidget {
  DemoPage({Key? key}) : super(key: key);
  bool nationality = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Button usage demo'),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SelectWidget(onChanged:(v){

                }, firstValue: "iraqi",selected: nationality,secondValue: "nonIraqi", title: "nationality",),


              ],
            ),
          )),
    );
  }
}
