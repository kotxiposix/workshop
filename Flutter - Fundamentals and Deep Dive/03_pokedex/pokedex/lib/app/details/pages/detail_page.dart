import 'package:flutter/material.dart';
import 'package:pokedex/common/models/Pokemon.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, required this.name, required this.pokemons})
      : super(key: key);
  final List<Pokemon> pokemons;
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: pokemons
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(e.name),
                          ))
                      .toList(),
                ))
          ],
        ),
      ),
    );
  }
}
