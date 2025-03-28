import 'package:flutter/material.dart';
import 'package:lgapp/color.dart';
import 'package:lgapp/sizeconfig.dart';

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
        // leading: Icon(Icons.ice_skating_outlined),
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(style: Theme.of(context).textTheme.headlineLarge, 'NA'),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      crossAxisCount:
                          MediaQuery.sizeOf(context).width < SizeConfig.tablet
                              ? 4
                              : MediaQuery.sizeOf(context).width <
                                  SizeConfig.desktop
                              ? 8
                              : 10,
                    ),
                    // scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: cNA.length,
                    itemBuilder:
                        (context, index) =>
                            CircleAvatar(backgroundColor: cNA[index]),
                  ),
                ),
                Text(
                  'Clay and Sea',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),

                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      crossAxisCount:
                          MediaQuery.sizeOf(context).width < SizeConfig.tablet
                              ? 4
                              : MediaQuery.sizeOf(context).width <
                                  SizeConfig.desktop
                              ? 8
                              : 10,
                    ),
                    // scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: clayAndSea.length,
                    itemBuilder:
                        (context, index) =>
                            CircleAvatar(backgroundColor: clayAndSea[index]),
                  ),
                ),
                Text(
                  'Mood Sunset',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      crossAxisCount:
                          MediaQuery.sizeOf(context).width < SizeConfig.tablet
                              ? 4
                              : MediaQuery.sizeOf(context).width <
                                  SizeConfig.desktop
                              ? 8
                              : 10,
                    ),
                    // scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: moodySunset.length,
                    itemBuilder:
                        (context, index) =>
                            CircleAvatar(backgroundColor: moodySunset[index]),
                  ),
                ),
                Text(
                  'Pastel Rainbow',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      crossAxisCount:
                          MediaQuery.sizeOf(context).width < SizeConfig.tablet
                              ? 4
                              : MediaQuery.sizeOf(context).width <
                                  SizeConfig.desktop
                              ? 8
                              : 10,
                    ),
                    // scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: pastelRainbow.length,
                    itemBuilder:
                        (context, index) =>
                            CircleAvatar(backgroundColor: pastelRainbow[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
