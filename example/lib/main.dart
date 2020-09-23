import 'package:baseflow_plugin_template/baseflow_plugin_template.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BaseflowPluginExample(
    pluginName: 'test plugin',
    githubURL: 'https://github.com/baseflow/', //TODO change when published
    pubDevURL: 'https://pub.dev/publishers/baseflow.com/packages',
    pages: [CenteredText.createPage()],
  ));
}

class CenteredText extends StatelessWidget {
  static ExamplePage createPage() {
    return ExamplePage(Icons.text_fields, (context) => const CenteredText());
  }

  const CenteredText();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Very simple example'),
    );
  }
}
