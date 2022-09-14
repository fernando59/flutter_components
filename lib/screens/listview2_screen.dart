import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  final games = [
    'League of Legends',
    'Evangelion',
    'GTA',
    'Valorant',
    'Free Fire',
    'Fortnite',
    'Dota 2'
  ];
  ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(games[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppTheme.primary,
            ),
            onTap: () {
              final game = games[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: games.length,
        ));
  }
}
