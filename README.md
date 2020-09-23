# baseflow_plugin_template

A template for plugin examples

## Getting Started

How to use this package:

Add the dependency in the yaml of the example:
```
dependencies:
  baseflow_plugin_template:
    git:
      url: git://github.com/Baseflow/baseflow_plugin_template.git
      ref: v1.0.0
```
Add the assets in the yaml as well:

```
flutter:
  assets:
    - packages/baseflow_plugin_template/logo.png
    - packages/baseflow_plugin_template/poweredByBaseflow.png
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