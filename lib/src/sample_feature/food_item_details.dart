import 'package:flutter/material.dart';

import 'food_item.dart';

class FoodItemDetailsView extends StatelessWidget {
  const FoodItemDetailsView(
      {super.key,
        this.foodItem = const FoodItem()

      });

  final FoodItem foodItem;
  static const routeName = '/food_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Food Details'),
        ),
        body:  Center(    //ToDo ? add const again body: const Center(
            child: Text(foodItem as String),
        ),
    );
  }

}