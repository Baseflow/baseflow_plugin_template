import 'package:baseflow_plugin_template/src/info_page.dart';
import 'package:baseflow_plugin_template/src/page.dart';
import 'package:flutter/material.dart';

import 'home.dart';

/// A Flutter application demonstrating the functionality of this plugin
class BaseflowPluginExample extends StatelessWidget {
  final String pluginName;
  final List<ExamplePage> pages;
  final List<Widget>? appBarActions;

  /// [MaterialColor] to be used in the app [ThemeData]
  final MaterialColor themeMaterialColor =
      createMaterialColor(const Color.fromRGBO(48, 49, 60, 1));

  BaseflowPluginExample({
    Key? key,
    required this.pluginName,
    required String githubURL,
    required String pubDevURL,
    required this.pages,
    this.appBarActions,
  }) : super(key: key) {
    pages.add(InfoPage.createPage(pluginName, githubURL, pubDevURL));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baseflow $pluginName',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              secondary: Colors.white60,
              surface: const Color.fromRGBO(48, 49, 60, 0.8),
            ),
        buttonTheme: ButtonThemeData(
          buttonColor: themeMaterialColor.shade500,
          disabledColor: themeMaterialColor.withRed(200),
          splashColor: themeMaterialColor.shade50,
          textTheme: ButtonTextTheme.primary,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: const Color.fromRGBO(57, 58, 71, 1),
        ),
        hintColor: themeMaterialColor.shade500,
        primarySwatch: createMaterialColor(const Color.fromRGBO(48, 49, 60, 1)),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 1.3,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
            height: 1.2,
          ),
          labelLarge: TextStyle(color: Colors.white),
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Color.fromRGBO(37, 37, 37, 1),
          filled: true,
        ),
      ),
      home: AppHome(
        title: 'Baseflow $pluginName example app',
        pages: pages,
        appBarActions: appBarActions,
      ),
    );
  }

  /// Creates a [MaterialColor] based on the supplied [Color]
  static MaterialColor createMaterialColor(Color color) {
    var strengths = <double>[.05];
    var swatch = <int, Color>{};
    final r = color.red, g = color.green, b = color.blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
