import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../sample_feature/food_item_details.dart';
import '../sample_feature/food_item_list_view.dart';

/// The route configuration.
///
///
///
GoRouter get routerGoRouting=> _router;
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      // path: '/',
      path: FoodItemListView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const FoodItemListView();
      },
      routes: <RouteBase>[
        GoRoute(
          // path: 'details',
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const FoodItemDetailsView();
            // return const FoodItemDetailsView();
          },
        ),
      ],
    ),
  ],
);