
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

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

AppBar _border() {
  return AppBar(
    title: Text('  GDSC 모바일 스터디'),
    titleTextStyle: defaultTextStyle('Pretendard'),
    shape: Border(bottom: BorderSide(color: const Color(0xFFDCDCDC))),
    backgroundColor: Colors.white,
  );
}

class Sections extends StatelessWidget {
  final Widget content;
  final String sectionTitle;
  const Sections(
      {super.key, required this.sectionTitle, required this.content});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.only(left: 25, top: 30, bottom: 30),
              child: Text(
                sectionTitle,
                style: defaultTextStyle('Inter'),
                textAlign: TextAlign.left,
              ),
            )),
        content,
      ],
    );
  }
}

class _textIconButton extends StatelessWidget {
  final SvgPicture icon;
  final String text;
  final Function onPressedListener;
  const _textIconButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressedListener});
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(0.5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          ),
          elevation: 0.0,
          minimumSize: Size(MediaQuery.of(context).size.height * 0.172, MediaQuery.of(context).size.height * 0.172),
        ),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(this.text, style: TextStyle(
          fontSize: 17,
          fontFamily: "Pretendard",
          fontWeight: FontWeight.w700,
          color:Colors.black,
          )),
            SizedBox(child: this.icon, height: MediaQuery.of(context).size.height*0.1)
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: _border(),
      body: Column(
        children: [
          Sections(
            sectionTitle: "과제",
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _textIconButton(
                    icon: SvgPicture.asset('assets/book_1.svg', width: 60, height: 60),
                    text: '오늘의 과제',
                    onPressedListener: () {}),
                _textIconButton(
                    icon: SvgPicture.asset('assets/book_2.svg', width: 50, height: 50),
                    text: '수행한 과제',
                    onPressedListener: () {}),
              ],
            ),
          ),
          Sections(
            sectionTitle: "나의 수행도",
            content: Container(
              decoration: BoxDecoration(
                color:Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(6),
              ),
              child: SizedBox(
                width:300,
                height:240,
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now(),
                  rowHeight: 32,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                    ),
                    titleTextFormatter: (_,__){return "Month";}
                  ),
                  daysOfWeekVisible: false,
                  calendarStyle: CalendarStyle(
                      tableBorder: TableBorder.all(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      isTodayHighlighted: false,
                      outsideDaysVisible: false,
                      disabledTextStyle: const TextStyle(color: Color(0xFF000000)),
                      todayTextStyle: const TextStyle(color: Color(0xFF000000)),
                  ),
                ),
              ),
            ),
          ),
          Sections(
            sectionTitle: "나의 다짐",
            content: FractionallySizedBox(widthFactor: 0.9,child:Text('다짐... 다짐육... 과제 올 제출 함 해보자!!!!',textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize:16,
              ),
            )),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    ));
  }
}
