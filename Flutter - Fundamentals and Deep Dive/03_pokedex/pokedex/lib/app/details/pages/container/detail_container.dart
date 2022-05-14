import 'package:flutter/material.dart';
import 'package:pokedex/app/details/pages/detail_page.dart';
import 'package:pokedex/app/home/data/pokemon_repository.dart';
import 'package:pokedex/common/exceptions/Failure.dart';
import 'package:pokedex/common/models/Pokemon.dart';
import 'package:pokedex/common/widgets/pokedex_error.dart';
import 'package:pokedex/common/widgets/pokedex_loading.dart';

class DetailArguments {
  DetailArguments({required this.name});
  final String name;
}

class DetailContainer extends StatelessWidget {
  DetailContainer({Key? key, required this.repository, required this.arguments})
      : super(key: key);
  final IPokemonRepository repository;
  final DetailArguments arguments;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: repository.getAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const PokedexLoading();
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return DetailPage(
            name: arguments.name,
            pokemons: snapshot.data!,
          );
        }

        if (snapshot.hasError) {
          return PokedexError(message: (snapshot.error as Failure).message!);
        }

        return Container();
      },
    );
  }
}
