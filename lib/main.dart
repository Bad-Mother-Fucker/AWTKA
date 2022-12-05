import 'package:awtka/Boundary/MainListView.dart';
import 'package:awtka/Helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'Entity/Accademia.dart';
void main() {
  runApp(
       ChangeNotifierProvider(
           create: (context) => Accademia(),
            child: const MyApp(),
       )
  );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWTKA',
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
        //primarySwatch: CustomColors.materialBackgroundBlack,
        //primaryColor: CustomColors.materialBackgroundBlack,
        appBarTheme: const AppBarTheme(shadowColor: Colors.transparent, color: CustomColors.backgroundBlack),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
          headline4: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),
          headline5: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: CustomColors.mainRed, fontFamily: 'Poppins', letterSpacing: 1),
          headline6: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),
          bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Poppins' , fontWeight: FontWeight.normal,color: Colors.white),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Poppins', color: Colors.white),
          caption: TextStyle(fontSize: 14.0, fontFamily: 'Poppins', color: Colors.grey),
          overline:  TextStyle(fontSize: 10.0, fontFamily: 'Poppins', color: Colors.white),

        ),
      ),
      home: const MyHomePage(title: 'ALLIEVI'),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return const Scaffold(
      body: MainListView()
    );
  }
}
