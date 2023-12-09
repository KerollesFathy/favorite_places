import 'package:flutter/material.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:favorite_places/screens/add_place.dart';

class PlacesScreen extends StatelessWidget {
    const PlacesScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Your Places"),
                actions: [
                    IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                            // write ur logic
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) =>  const AddPlaceScreen(),
                            ),);
                        },
                    ),
                ]
            ),
            body: PlacesList(places: []),
        );
    }
}