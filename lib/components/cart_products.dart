// ignore_for_file: unnecessary_new

import 'dart:ui';

import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Pink Gown",
      "picture": "images/products/p3.jpg",
      "price": 2200,
      "size": "M",
      "color": "Pink",
      "quantity": 1,
    },
    {
      "name": "Black Heels",
      "picture": "images/products/p5.jpg",
      "price": 1200,
      "size": "6",
      "color": "Black",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_picture,
    this.cart_prod_size,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, fit: BoxFit.fill),
       
        title: new Text(cart_prod_name),
        subtitle: new Column( 
          children:<Widget>[

            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(0.0), 
                child: new Text("Size:"),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.teal[900]),),
                ),
                

                new Padding(padding: const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),

                child: new Text("Color:"),
                ), 
                Padding(padding: const EdgeInsets.all(4.0),
                child: new Text(cart_prod_color, style: TextStyle(color: Colors.teal[900] ),),
                ),
              ],
            ),
            
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\Rs ${cart_prod_price}", style: TextStyle(fontSize: 16.0 ,
              fontWeight: FontWeight.bold,
              color: Colors.teal[900]),),
            ), 


          ],
        ),

        // trailing: new Column(
        //   children:<Widget> [
        //     new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),
        //     new Text("$cart_prod_qty"),
        //     new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down)),
            
        //   ],
        // ),
      ) ,

        // void addQuantity(){
        //   cart_prod_qty = cart_prod_qty +1;
        // }
    );
  }
}
