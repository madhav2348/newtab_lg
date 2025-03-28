import 'package:flutter/material.dart';
import 'package:lgapp/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('NA'),
              Container(
                decoration: BoxDecoration(color: Colors.black),
                height: 100,
                width: 800,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: cNA.length,
                  itemBuilder:
                      (context, index) => ListTile(
                        leading: CircleAvatar(backgroundColor: cNA[index]),
                      ),
                ),
              ),

              // SizedBox(
              //   height: 600,
              //   width: 100,
              //   child: Column(
              //     spacing: 10,
              //     children: [
              //       Text('Clay and Sea'),
              //       ListView.builder(
              //         shrinkWrap: true,
              //         itemCount: clayAndSea.length,
              //         itemBuilder:
              //             (context, index) => ListTile(
              //               leading: CircleAvatar(
              //                 backgroundColor: clayAndSea[index],
              //               ),
              //             ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 600,
              //   width: 100,
              //   child: Column(
              //     spacing: 10,
              //     children: [
              //       Text('Moody Sunset'),
              //       ListView.builder(
              //         shrinkWrap: true,
              //         itemCount: moodySunset.length,
              //         itemBuilder:
              //             (context, index) => ListTile(
              //               leading: CircleAvatar(
              //                 backgroundColor: moodySunset[index],
              //               ),
              //             ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 600,
              //   width: 100,
              //   child: Column(
              //     spacing: 10,
              //     children: [
              //       Text('Pastel Rainbow'),
              //       ListView.builder(
              //         shrinkWrap: true,
              //         itemCount: pastelRainbow.length,
              //         itemBuilder:
              //             (context, index) => ListTile(
              //               leading: CircleAvatar(
              //                 backgroundColor: pastelRainbow[index],
              //               ),
              //             ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
