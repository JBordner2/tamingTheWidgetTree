import 'package:flutter/material.dart';
import 'package:taming_the_widget_tree/daily_stock_chart.dart';
import 'package:taming_the_widget_tree/e_commerce_screen_before.dart';
import 'package:taming_the_widget_tree/expirimenting_with_flexible.dart';
import 'package:taming_the_widget_tree/flex_screen.dart';
import 'package:taming_the_widget_tree/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
      // home: ProfileScreen(),
      // home: FlexScreen(),
      // home: ExpirimentingWithFlexibleScreen(),
      // home: ECommerceScreen(),
      home: DailyStockChartScreen()
    );
  }
}
