import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextStyle defaultTextStyle(String fontFamily) {
  return TextStyle(
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    color:Colors.black,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(
          title: Text('  GDSC 모바일 스터디'),
          titleTextStyle: defaultTextStyle('Pretendard'),
          shape: Border(bottom: BorderSide(color: const Color(0xFFDCDCDC))),
          backgroundColor: Colors.white,
        ),
      ),
      body:Column(
        chlidren:[
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroudn
            )
          )
        ]
      )
    );
  }
}