import 'package:flutter/material.dart';
import 'pokemon.dart';

class PokeDetails extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetails({this.pokemon});
  _bodyWidget(BuildContext context)=>Stack(
    children: <Widget>[
    Positioned(
      height: MediaQuery.of(context).size.height /1.5,
      width: MediaQuery.of(context).size.width -20 ,
      left: 10.0,
      top: MediaQuery.of(context).size.height *0.1,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(""),
            Text(""),
            Text(""),
            Text(pokemon.name,style: TextStyle(
              fontSize: 20.0,
              color: Colors.red
            ),),
            Text("Height: ${pokemon.height} & Weight: ${pokemon.weight}",style: TextStyle(
              fontSize: 15,
              color: Colors.pink
            ),),
            Text("Type"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: pokemon.type
                .map((t)=>FilterChip(
                 label: Text(t),
                 backgroundColor: Colors.amber,
                onSelected: (b){})).toList(),
            ),
            Text("Weakness"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: pokemon.weaknesses
              .map((w)=>FilterChip(label: Text(w),
              backgroundColor: Colors.deepOrangeAccent,
              onSelected: (b){})).toList(),
            )
          ],
        ),
      ),
    ),
      Align(
        alignment: Alignment.topCenter,
        child: Hero(
          tag: pokemon.img,
          child: Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(pokemon.img), fit: BoxFit.cover
              )
            ),
          ),
        ),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(pokemon.name),
      ),
      backgroundColor: Colors.pink,
      body: _bodyWidget(context),
    );
  }
}
