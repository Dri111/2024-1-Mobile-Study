
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api_pokemon.dart';
class PokeBarchart extends StatelessWidget{
  PokeBarchart({super.key, required this.data});
  PokemonInfo data;
  @override
  Widget build(BuildContext context){
    return BarChart(
      BarChartData(

        maxY: 252,
        barGroups : barGroups,
        titlesData : titlesData,
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        barTouchData: barTouchData,
        borderData: FlBorderData(
          show: false,
        )
        ,
      )
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      getTooltipColor: (group) => Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          rod.toY.toString(),
          const TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        );
      },
    ),
  );

  List<BarChartGroupData> get barGroups{
    // print("POKO ${data.stats[0].base_stat as double}");
    return List.generate(6,(index)=> BarChartGroupData(
      x : index,
      barRods:[
        BarChartRodData(toY: data.stats[index].base_stat.toDouble(),
        gradient : LinearGradient(
          colors: [
            Colors.blue,
            Colors.cyan,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        ),

      ],
      showingTooltipIndicators: [0],
    ));
  }
  Widget getTitles(double value, TitleMeta meta){
    int index = value.toInt();
    String text = ['HP','공격','방어','특수공격','특수방어','스피드'][index];
    // String text = data.stats[index].stat.name;
    return SideTitleWidget(axisSide: meta.axisSide, child: Text(text,style: TextStyle(fontSize: 11),));
  }
  FlTitlesData get titlesData => FlTitlesData(
    show:true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles : true,
        reservedSize: 40,

        getTitlesWidget: getTitles
      )
    ),
    leftTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    rightTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
  );
}