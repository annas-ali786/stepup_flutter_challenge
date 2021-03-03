import 'package:flutter/material.dart';

import 'model.dart';

class Dropbox extends StatelessWidget {
  final List<ListItem> list = [
    ListItem(title: 'Python', subtitle: 'Feb 8, 2021'),
    ListItem(title: 'VenD Interview', subtitle: 'Aug 16, 2020'),
    ListItem(title: 'Wonder Tree', subtitle: 'Nov 10, 2015'),
    ListItem(title: 'Programming', subtitle: 'Feb 7, 2018'),
    ListItem(title: 'MS Thesis', subtitle: 'Nov 11, 2019'),
    ListItem(title: 'Applied Prog', subtitle: 'Feb 8, 2021'),
    ListItem(title: 'Research', subtitle: 'Jun 1, 2019'),
    ListItem(title: 'CA - Research', subtitle: 'May 24, 2017'),
    ListItem(title: 'WP', subtitle: 'May 24, 2017'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[900],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue[700]),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Home',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(
            children: [
              Container(width: 16),
              Container(
                child: Text('Recent'),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 2,
                  color: Colors.white,
                ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  child: Text('Shared'),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  ))),
                ),
              ),
              Container(
                child: Text('Starred'),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 2,
                  color: Colors.white,
                ))),
              ),
            ],
          ),
          Container(
            color: Colors.black12,
            child: ListTile(
              leading: Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 32,
              ),
              title: Text('Your dropbox is almost full'),
              subtitle: Text('Upgrade now for more space'),
              trailing: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: list
                  .map((e) => ListTile(
                        leading: Icon(
                          Icons.folder_shared,
                          color: Colors.blue,
                          size: 32,
                        ),
                        title: Text(e.title),
                        subtitle: Text('Shared on ${e.subtitle}'),
                        trailing: Icon(Icons.more_vert),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
