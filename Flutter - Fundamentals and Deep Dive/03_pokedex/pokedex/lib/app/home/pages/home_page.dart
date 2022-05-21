import 'package:flutter/material.dart';
import 'package:pokedex/app/details/pages/container/detail_container.dart';
import 'package:pokedex/app/home/pages/widgets/pokemn_card_widget.dart';
import 'package:pokedex/common/models/Pokemon.dart';

class HomePage extends StatelessWidget {
  final List<Pokemon> pokemons;
  const HomePage({Key? key, required this.pokemons, required this.onItemTap})
      : super(key: key);
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            "Pokedex",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: pokemons
              .map((e) => PokemonCard(
                    pokemon: e,
                    onTap: () => onItemTap(
                      '/details',
                      DetailArguments(name: e.name),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
