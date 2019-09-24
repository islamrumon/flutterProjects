import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var url = 'https://forflutter-c8ae2.firebaseio.com';

void getData(){
http.get(url+'product.json').then((http.Response response){
  final Map<String,Map<String,dynamic>> productListData= jsonDecode(response.body);

  productListData.forEach((String productId, Map<String,dynamic> productData){
    final product products = product(
        productId,
        productData['title'],
        productData['about'],
        productData['img'],
        productData['price']);
  });
});
  
}


void saveDate(title,about,img,price){
product newProducts = new product(null,title, about, img, price);
  final   Map<String,dynamic> newProduct = {
     'title':newProducts.title,
    'about':newProducts.about,
    'img':newProducts.img,
    'price':newProducts.price,
  };
  http.post(url+'products.json',body: jsonEncode(newProduct));

}


class product{
  String Id;
  String title;
  String about;
  String img;
  double price;
  product(this.Id,this.title,this.about,this.img,this.price);

}