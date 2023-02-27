import 'package:flutter/material.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
  }
}
// https://pub.dev/packages/shared_preferences
// Obtain shared preferences.
//----------------
// final prefs = await SharedPreferences.getInstance();
//
// // Save an integer value to 'counter' key.
// await prefs.setInt('counter', 10);
// // Save an boolean value to 'repeat' key.
// await prefs.setBool('repeat', true);
// // Save an double value to 'decimal' key.
// await prefs.setDouble('decimal', 1.5);
// // Save an String value to 'action' key.
// await prefs.setString('action', 'Start');
// // Save an list of strings to 'items' key.
// await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
//--------------------
// // Try reading data from the 'counter' key. If it doesn't exist, returns null.
// final int? counter = prefs.getInt('counter');
// // Try reading data from the 'repeat' key. If it doesn't exist, returns null.
// final bool? repeat = prefs.getBool('repeat');
// // Try reading data from the 'decimal' key. If it doesn't exist, returns null.
// final double? decimal = prefs.getDouble('decimal');
// // Try reading data from the 'action' key. If it doesn't exist, returns null.
// final String? action = prefs.getString('action');
// // Try reading data from the 'items' key. If it doesn't exist, returns null.
// final List<String>? items = prefs.getStringList('items');
//-------------------
// Remove data for the 'counter' key.
// final success = await prefs.remove('counter');
//------

// Testing
//
// You can populate SharedPreferences with initial values in your tests by running this code:
// Map<String, Object> values = <String, Object>{'counter': 1};
// SharedPreferences.setMockInitialValues(values);