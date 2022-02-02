// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping/pages/product_details.dart';

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Boyfriend Jeans",
      "picture": "images/products/p1.jpg",
      "old_price": 998,
      "price": 1049,
    },
    {
      "name": "Pink Gown",
      "picture": "images/products/p3.jpg",
      "old_price": 3099,
      "price": 2200,
    },
    {
      "name": "Nike Shoes",
      "picture": "images/products/p4.jpg",
      "old_price": 7200,
      "price": 5400,
    },
    {
      "name": "G-Shock",
      "picture": "images/products/p7.jpg",
      "old_price": 15500,
      "price": 11999,
    },
    {
      "name": "Black Heels",
      "picture": "images/products/p5.jpg",
      "old_price": 2200,
      "price": 1200,
    },
    {
      "name": "Bracelet",
      "picture": "images/products/p6.jpg",
      "old_price": 690,
      "price": 350,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return 
          Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,

                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\Rs $prod_price",
                        style: TextStyle(
                            color: Colors.teal[800],
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        "\Rs $prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
