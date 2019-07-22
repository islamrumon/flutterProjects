import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:poke_app/pokemon.dart';
import 'package:poke_app/PokeDetials.dart';

void main()=>runApp(
    MaterialApp(
      title: "Pokemon App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var url ="https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  PokemonHub pokemonHub;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDate();
  }

  fetchDate() async{
    var res = await http.get(url);
    var datas = jsonDecode(res.body);
    pokemonHub = PokemonHub.fromJson(datas);

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon"),
      ),
      body: pokemonHub == null ? Center( child: CircularProgressIndicator(),): GridView.count(crossAxisCount: 2,children:
      pokemonHub.pokemon.map((Pokemon poke)=>Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PokeDetails(
              pokemon : poke,
            )));
          },
          child: Card(

            elevation: 3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Hero(
                  tag: poke.img,
                  child: Container(
                    height: 100.0,
                    width: 100.0,

                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(poke.img))
                    ),
                  ),
                ),

                Text(
                  poke.name,
                  style: TextStyle(
                    fontSize: 22.90,
                    fontWeight: FontWeight.bold,
                  ),
                 ),
              ],
            ),
          ),
        ),
      )).toList()
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.refresh),),
    );
  }
}
