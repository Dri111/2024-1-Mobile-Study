import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title:'Week2'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({key : Key, required this.title});

  final String title;
  static const EdgeInsets paddingSetting = EdgeInsets.all(5);
  static  BorderRadius radiusSetting = BorderRadius.circular(12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:170,
                height:170,
                color:Colors.white,
                padding:MyHomePage.paddingSetting,
                child:              Container(
                  // width: 170, height:170,
                  decoration: BoxDecoration(
                    color:Colors.redAccent,
                    borderRadius: MyHomePage.radiusSetting,
                  ),
                ),
              ),
              Container(
                width:170,
                height:170,
                color:Colors.white,
                padding:MyHomePage.paddingSetting,
                child:              Container(
                  // width: 170, height:170,
                  decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius: MyHomePage.radiusSetting,
                  ),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:170,
                height:170,
                color:Colors.white,
                padding:MyHomePage.paddingSetting,
                child:              Container(
                  // width: 170, height:170,
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius: MyHomePage.radiusSetting,
                  ),
                ),
              ),
              Container(
                width:170,
                height:170,
                color:Colors.white,
                padding:MyHomePage.paddingSetting,
                child:              Container(
                  // width: 170, height:170,
                  decoration: BoxDecoration(
                    color:Colors.green,
                    borderRadius: MyHomePage.radiusSetting,
                  ),
                ),
              )
            ],
          ),
          Text("굴착기",
              style:TextStyle(
                  fontSize: 17,
                  decoration: TextDecoration.none,
                  color:Colors.black
              ))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      // TODO: Container를 지우고 구현해주세요!
    );
  }
}
