import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'api_pokemon.dart';
import 'pokemon_chart_viewer.dart';

void main() {
  runApp(const MyApp());
}


class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});
  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class PokemonViewer extends StatelessWidget {
  PokemonViewer({super.key, required this.pokeName, required this.info});
  PokemonInfo info;
  String? pokeName;
  BoxDecoration base_style = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
  );
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (info.id == -2 ) {
      return Column(children: [
        SizedBox(
          width: width / 2,
          height: width / 2,
          child: Image.network(
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png",
              fit: BoxFit.contain),
        ),
        Container(
            color: Colors.white38,
            child: Text("안녕하세용 :) \n메타몽 이에용\n 궁금하신 포켓몬의 이름을 \n영어로 입력해 주세용!",
                style:TextStyle(
                    fontSize: width/20,
                ),
textAlign: TextAlign.center,
            ),
          alignment: Alignment.center,
          // child: PokeBarchart(data: info),
        )
      ]);
    } else if ( info.id == -1){
      return Column(children: [
        SizedBox(
          width: width / 2,
          height: width / 2,
          child: Image.network(
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png",
              fit: BoxFit.contain),
        ),
        Container(
          color: Colors.white38,
          child: Text("해당 이름을 가진\n포켓몬이 없어요\nㅠㅠ",
          style:TextStyle(
            fontSize: width/15,
          ),
            textAlign: TextAlign.center,
          )
          // child: PokeBarchart(data: info),
        )
      ]);
    }
    else {
      return Column(children: [
        SizedBox(
          width: width / 2,
          height: width / 2,
          child: Image.network(info.sprites.front_default, fit: BoxFit.contain),
        ),
         Text(info.name,
            style:TextStyle(
                fontSize: 30,
              fontWeight: FontWeight.bold
            )),
        SizedBox(
            width : width/7*6,
          height: width/5*4,
            child: DecoratedBox(
                child:PokeBarchart(data: info),
                decoration : BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow : const [
                    BoxShadow(
                      color : Colors.white12,
                      blurRadius : 10,
                      spreadRadius: 3,
                    )
                  ]
                )
            ),
        )
      ]);
    }
  }
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  String queryName = '';
  static final PokemonInfo DEFAULT_INFO = PokemonInfo(id: -2, name: "UNKNOWN_", height: -1, stats: List<StatsHolder>.empty(), sprites: SpriteSet(front_default: ''));
  static final PokemonInfo UNKNOWN_INFO = PokemonInfo(id: -1, name: "UNKNOWN__", height: -1, stats: List<StatsHolder>.empty(), sprites: SpriteSet(front_default: ''));
  PokemonInfo queryRes = DEFAULT_INFO;

  Future<PokemonInfo> callApi() async {
    Dio dio = Dio();
    PokemonInfo response;
    if(queryName.isNotEmpty) {
      try {
        response = await PokemonService(dio).getPokemonInfo(
            queryName);
      } on Exception catch (_) {
        print("Error on acheiving API");
        response = UNKNOWN_INFO;
      }
    }else{
      response = DEFAULT_INFO;
    }
    return response;
  }

  void updateUI() async {
    // queryName = queryName.toLowerCase();
    // print("updateUI $queryName");
    // final response = await Dio().get("https://pokeapi.co/api/v2/pokemon/$queryName");
    // print(response);

    // PokemonInfo d = PokemonInfo.fromJson(response as Map<String, dynamic>);
    PokemonInfo d = await callApi();
    print(d);
    setState(() {
      queryRes = d;
    });
  }  void resetUI() async {
    // queryName = queryName.toLowerCase();
    // print("updateUI $queryName");
    // final response = await Dio().get("https://pokeapi.co/api/v2/pokemon/$queryName");
    // print(response);

    // PokemonInfo d = PokemonInfo.fromJson(response as Map<String, dynamic>);
    setState(() {
      queryRes = DEFAULT_INFO;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    log("Build!!!!!!!!");
    return Column(children: [
      IconButton(
        icon: Image.asset('assets/International_Pokémon_logo.png'),
        onPressed: () {
          queryName = '';
          resetUI();
        },
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Container(
          // Add padding around the search bar
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          // Use a Material design search bar
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print(_searchController.value.text);
                  queryName=_searchController.value.text.toLowerCase();
                  updateUI();
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      PokemonViewer(pokeName: queryName, info: queryRes)
    ]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '굴착기의 포케덱스',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: SearchBarWidget(),
        ));
  }
}
