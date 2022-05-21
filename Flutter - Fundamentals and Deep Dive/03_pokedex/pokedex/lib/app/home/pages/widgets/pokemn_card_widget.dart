import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/app/home/pages/widgets/type_widget.dart';
import 'package:pokedex/common/models/Pokemon.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({Key? key, required this.pokemon, required this.onTap})
      : super(key: key);
  final Pokemon pokemon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: pokemon.baseColor!.withOpacity(0.6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children:
                        pokemon.type.map((e) => TypeWidget(name: e)).toList(),
                  ),
                  Flexible(
                    child: CachedNetworkImage(
                      imageUrl: pokemon.image,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        size: 64,
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
