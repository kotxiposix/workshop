import 'package:flutter/material.dart';
import 'package:pokedex/app/details/pages/container/detail_container.dart';
import 'package:pokedex/app/home/data/pokemon_repository.dart';
import 'package:pokedex/app/home/pages/container/home_container.dart';

class PokedexRoute extends StatelessWidget {
  const PokedexRoute({Key? key, required this.repository}) : super(key: key);
  final PokemonRepository repository;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: "/",
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          if (settings.name == "/") {
            return HomeContainer(
              repository: repository,
              onItemTap: (route, arguments) {
                Navigator.of(context).pushNamed(route, arguments: arguments);
              },
            );
          }
          if (settings.name == "/details") {
            return DetailContainer(
              repository: repository,
              arguments: (settings.arguments as DetailArguments),
            );
          }
          return Container();
        });
      },
    );
  }
}
