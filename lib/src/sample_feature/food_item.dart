import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItem {
  final String pathToImageLinkOrAsset;
  final String nameOfDish;
  final int price;
  final List<int> ratingTaste;
  final List<int> ratingAmount;

  const FoodItem(
      {
      // this.pathToImageLinkOrAsset = 'assets/images/food_logo.png',
      this.pathToImageLinkOrAsset = 'assets/images/food/image_rand0.png',
      this.nameOfDish = 'example dish',
      this.price = 25000,
      this.ratingTaste = const [10],
      this.ratingAmount = const [10]});

  // @override
  // String toString() {
  //   return 'toStringMethode';
  // }

  Column getAllElementsAsColumn() {
    return Column(children: [
      Image(image: AssetImage(pathToImageLinkOrAsset),width: 200,height: 200,),
      Text(nameOfDish),
      Text(price.toString()),
      Text(ratingAmount.toString()),
      Text(ratingTaste.toString()),
      const DropdownMenuItem(
        value: ThemeMode.system,
        child: Text('Buy Item'),
        // child: Text('Select ammount'),
      ),
    ]);
  }

  String getImage() {
    //ToDo Change to return Image
    return pathToImageLinkOrAsset;
  }
}
