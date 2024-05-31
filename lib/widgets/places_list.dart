import 'package:flutter/material.dart';
import 'dart:io';
import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/screens/places_detail.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({
    Key? key,
    required this.places,
  }) : super(key: key);

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          "No places added yet",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => PlaceDetailScreen(place: places[index]),
              ),
            );
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 26,
              // backgroundImage: FileImage(places[index].image),
            ),
            title: Text(
              places[index].title,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
        );
      },
    );
  }
}
