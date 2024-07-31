# baseflow_plugin_template

A template for plugin examples

## Getting Started

How to use this package:

Add the dependency in the yaml of the example:

```
dependencies:
  baseflow_plugin_template: ^2.1.2
```

And run the template app:

```dart
  runApp(BaseflowPluginExample(
    pluginName: 'test plugin',
    githubURL: 'https://github.com/baseflow/baseflow_plugin_template',
    pubDevURL: 'https://pub.dev/publishers/baseflow.com/packages',
    pages: [CenteredText.createPage()],
  ));
```
