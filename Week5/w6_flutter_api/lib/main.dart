import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


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

class ApiState extends State<ApiResultWidget>{
  double? temper;
  double? humid;
  double? pres;
  double? winds;
  Future<Response> callApi() async {
    String apikey = "d7a5a2fccc4dd03aa3ba464e7fe68270";
    String cityName = "kor";
    String apiCall = "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apikey";
    final response = await Dio().get(apiCall);
    return response;
  }
  void updateUI() async{
    final response = await callApi();
    setState(() {
      temper = (response.data['main']['temp'].toDouble()-273.15)*1000;
      humid = response.data['main']['humidity'].toDouble()*1000;
      pres=response.data['main']['pressure'].toDouble()*0.000987*1000;
      winds=response.data['wind']['speed'].toDouble()*1000;
      temper = (temper!.round()/1000);
      humid = humid!.round()/1000;
      pres = pres!.round()/1000;
      winds = winds!.round()/1000;
    });
  }
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ElevatedButton(onPressed: updateUI,
            child:Text('날씨 API 받기!')
        ),
        Text("기온 : ${temper??'no data'} ℃"),
        Text("습도 : ${humid??'no data'} %"),
        Text("기압 : ${pres??'no data'} atm"),
        Text("풍속 : ${winds??'no data'} m/s"),
      ],

    );
  }
}

class ApiResultWidget extends StatefulWidget{
  const ApiResultWidget({super.key});
  @override
  State<ApiResultWidget> createState()=>ApiState();
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

        body:
            Align(
              child:ApiResultWidget(),
              alignment: Alignment.topCenter,
            )
        )
    );
  }
}