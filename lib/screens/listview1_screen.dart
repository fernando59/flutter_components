import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final games = [
    'League of Legends',
    'Evangelion',
    'GTA',
    'Valorant',
    'Free Fire',
    'Fortnite',
    'Dota 2'
  ];
  ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView')),
        body: ListView(
          children: [
            ...games
                .map((game) => ListTile(
                      trailing: const Icon(Icons.arrow_back_ios_new_outlined),
                      title: Text(game),
                    ))
                .toList(),
            const Divider()
          ],
        ));
  }
}
