//import 'dart:html';

import 'package:flutter/material.dart';


class Item {
  final String urlImage;
  final String title;
 

  const Item({
    required this.urlImage,
    required this.title,
  
  });
}

class Str_1 extends StatelessWidget {

  
  final items = <Item>[
    Item(
      title: 'title 1',
      urlImage:
          'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg',
  
    ),
    Item(
      title: 'title 2',
      urlImage:
          'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg',
         
    ),
    Item(
      title: 'title 3',
      urlImage:
          'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg',
         
    ),
    Item(
      title: 'title 4',
      urlImage:
          'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg',
       
    ),
    Item(
      title: 'title 5',
      urlImage:
          'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg',
        
    ),
    Item(
      title: 'title 6',
      urlImage:
          'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg',
        
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        
        body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Screen2(item: item)),
              ),
              child:Card(
                child: Row(
                children: <Widget>[
                  Hero(transitionOnUserGestures: true,
                    tag: item, child: buildImage(item.urlImage)),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Item ${index + 1}',
                    style: TextStyle(fontSize: 24),
                  ),
                  
                ],
              ),
              )
            );
          },
        ),
      );

  Widget buildImage(String urlImage) => Image.network(
        urlImage,
        fit: BoxFit.cover,
        width: 100,
        height: 100,
      );
}

class Screen2 extends StatelessWidget {
  final Item item;

  const Screen2({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Dota 2 Hero'),
          centerTitle: true,
        ),
        body: Hero(transitionOnUserGestures: true,
          tag:item,child:buildImage()),
      );

  Widget buildImage() => AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          item.urlImage,
          fit: BoxFit.cover,
        ),
      );
}
