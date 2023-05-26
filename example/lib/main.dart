import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'Flutter Icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              FlutterIcons.linkedin_square_ant,
              size: 100,
            ),
            IconToggle(
                activeColor: Colors.red,
                unselectedIconData: Entypo.hand,
                inactiveColor: Colors.black,
                onChanged: (value) => debugPrint('$value'),
                reverseDuration: const Duration(microseconds: 1000)),
            // const Icon(AntDesign.stepforward),
            // const Icon(Ionicons.ios_search),
            // const Icon(FontAwesome.glass),
            // const Icon(MaterialIcons.ac_unit),
            // const Icon(FontAwesome5.address_book),
            // const Icon(FontAwesome5Solid.address_book),
            // const Icon(FontAwesome5Brands.$500px),
            // const Icon(FlutterIcons.$500px_ent),
            // const Icon(FlutterIcons.$500px_faw5d),
            // const Icon(WeatherIcons.wi_alien),
            // const Icon(WeatherIcons.wi_cloud),
            // const Icon(WeatherIcons.wi_day_rain)
          ],
        ),
      ),
    );
  }
}
