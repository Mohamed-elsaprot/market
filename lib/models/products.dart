import 'package:flutter/material.dart';

class Product {
  final int id, price;
  final String title, description, image;

  Product({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.description,
    @required this.image,
  });


}

List products = [
  Product(
      id: 1,
      price: 120,
      title: 'AirPods',
      description: 'AirPods Apple earbuds Headphones iPhone, apple',
      image: 'images/airpods.png'),
  Product(
      id: 2,
      price: 59,
      title: 'ps4 controoler',
      description:
      'PlayStation 4 Twisted Metal: Black Sony DualShock 4, others, video Game, game Controllers',
      image: 'images/controoler.png'),
  Product(
      id: 3,
      price: 89,
      title: 'Sony HeadPhones',
      description:
      'Blue Sony cordless headphones, Noise-cancelling headphones Bluetooth Headset Wireless, Sony Bluetooth headset bass',
      image: 'images/headphone.png'),
  Product(
      id: 4,
      price: 249,
      title: 'Samsung Galaxy S8',
      description: 'Samsung Galaxy S8 2018 Mobile',
      image: 'images/mobile.png'),
  Product(
      id: 5,
      price: 29,
      title: 'Speaker',
      description:
      'Wireless speaker Loudspeaker JBL Headphones, speakers, electronics, bluetooth, stereophonic Sound',
      image: 'images/speaker.png'),
  Product(
      id: 6,
      price: 99,
      title: 'VR',
      description:
      'Samsung Gear VR PlayStation VR Virtual reality Oculus VR, oculus rift vr, game, video Game',
      image: 'images/vr.png'),
  Product(
      id: 7,
      price: 139,
      title: 'Apple Watch',
      description: 'Apple Watch Series 3 iPhone, smart Watches',
      image: 'images/watch.png'),
];
