// ignore_for_file: unnecessary_new, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      
      child: ListView(
        scrollDirection: Axis.horizontal,
        
        children: <Widget>[
           Category(
              image_location: 'images/cats/c6.png', 
              image_caption: 'Dress'),

          Category(
            image_location: 'images/cats/c8.png',
            image_caption: 'Casuals',
          ),

            Category(
            image_location: 'images/cats/c11.jpg',
            image_caption: 'Formals',
          ),

           Category(
            image_location: 'images/cats/c12.png',
            image_caption: 'Bottomwear',
          ),

          Category(
            image_location: 'images/cats/c5.png',
            image_caption: 'Footwear',
          ),

          Category(image_location: 'images/cats/c13.png', image_caption: 'Beauty'),
         
          Category(
              image_location: 'images/cats/c7.png',
              image_caption: 'Accessories'),
         
        
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        2.0,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
