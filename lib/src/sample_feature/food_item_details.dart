import 'package:flutter/material.dart';

import 'food_item.dart';

class FoodItemDetailsView extends StatelessWidget {
  const FoodItemDetailsView({super.key, this.foodItem = const FoodItem()});

   final FoodItem foodItem;

  // static const routeName = 'food_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Food Details: ${foodItem.nameOfDish}'),
        ),
        body: Center(child: foodItem.getAllElementsAsColumn()));

        // child: Column(children: [
        //   Image(image: AssetImage(foodItem.pathToImageLinkOrAsset)),
        //   Text(foodItem.nameOfDish),
        //   Text(foodItem.price as String),
        //   Text(foodItem.ratingAmount as String),
        //   Text(foodItem.ratingTaste as String),

            // ])));
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Food Details'),
//     ),
//     body:  Center(    //ToDo ? add const again body: const Center(
//       // child: Text(foodItem as String),
//       child: Text('sthhhhhh'),
//     ),
//   );
// }
}
