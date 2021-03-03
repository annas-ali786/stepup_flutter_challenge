import 'package:flutter/material.dart';

import 'model.dart';

class MusixMatch extends StatelessWidget {
  final List<ListItem> list = [
    ListItem(title: 'Ansu - Auj', subtitle: 'Auj'),
    ListItem(title: 'Raat - Auj', subtitle: 'Auj'),
    ListItem(title: 'Angraziyan', subtitle: 'Auj'),
    ListItem(title: 'Keh Dena - Auj', subtitle: 'Auj'),
    ListItem(title: 'O Jaana', subtitle: 'Auj'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_filled),
            label: 'Contribute',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.model_training_rounded),
            label: 'Identitfy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        iconSize: 18,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
                Expanded(child: Container()),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue[300],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PLAYLIST - 6 SONGS'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Auj',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black12,
              ),
              child: Row(
                children: [
                  Container(
                    width: 16,
                  ),
                  Icon(
                    Icons.shuffle,
                    color: Colors.black26,
                  ),
                  Expanded(child: Container()),
                  Text(
                    'Shuffle Play',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: list
                  .map((e) => ListTile(
                        leading: Icon(
                          Icons.blur_on,
                          size: 32,
                        ),
                        title: Text(e.title),
                        subtitle: Text(e.subtitle),
                        trailing: Icon(Icons.more_vert),
                      ))
                  .toList(),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[300],
                  )),
              title: Text('Jhalleya'),
              subtitle: Text('Marjaan'),
              trailing: Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
