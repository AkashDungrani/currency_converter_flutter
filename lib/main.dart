import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:practice/hepler/apihelper.dart';
import 'package:practice/models/currency.dart';
import 'package:practice/view/screens/homepage.dart';
import 'package:practice/view/screens/ui.dart';

import 'models/globals.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber,appBarTheme: AppBarTheme(backgroundColor: Colors.black,)),
    debugShowCheckedModeBanner: false,
    // initialRoute: "ui",
    routes: {
      "/":(context) => CurrencyConverter(),
      "ui":(context) => UiPage(),
    },
  ));
}


