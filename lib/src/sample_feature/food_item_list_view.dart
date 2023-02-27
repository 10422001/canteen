import 'package:flutter/material.dart';

import '../settings/settings_view.dart';
import 'food_item.dart';
import 'food_item_details.dart';
import 'sample_item_details_view.dart';
import 'package:go_router/go_router.dart';


class FoodItemListView extends StatelessWidget {
  const FoodItemListView({
    super.key,
    this.items = const [FoodItem(), FoodItem(), FoodItem()],
  });

  static const routeName = '/';

  final List<FoodItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dishes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.set_meal),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'foodItemsListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text('${item.nameOfDish} : ${item.price} VND'),
              leading:  CircleAvatar(
                // foregroundImage: AssetImage('assets/images/flutter_logo.png'),
                foregroundImage: AssetImage(item.pathToImageLinkOrAsset),
              ),

              onTap: () => context.go('/details');
              // {
              //   Navigator.restorablePushNamed(
              //     context,
              //     FoodItemDetailsView.routeName,
              //     // FoodItemListView.routeName,
              //   );
              // });
        },
      ),
    );
  }
}
