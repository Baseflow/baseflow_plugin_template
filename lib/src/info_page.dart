import 'package:baseflow_plugin_template/src/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import 'globals.dart';

/// [StatelessWidget] displaying information about Baseflow
class InfoPage extends StatelessWidget {
  static ExamplePage createPage(
    String pluginName,
    String githubUrl,
    String pubDevUrl,
  ) {
    return new ExamplePage(
        Icons.info_outline,
        (context) => InfoPage._(
              pluginName: pluginName,
              githubUrl: githubUrl,
              pubDevUrl: pubDevUrl,
            ));
  }

  final String pluginName;
  final String githubUrl;
  final String pubDevUrl;

  const InfoPage._({
    Key? key,
    required this.pluginName,
    required this.githubUrl,
    required this.pubDevUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultHorizontalPadding + defaultVerticalPadding,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('poweredByBaseflow.png',
                      width: 250,
                      alignment: Alignment.centerLeft,
                      package: 'baseflow_plugin_template'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                ),
                Text(
                  'This app showcases the possibilities of the $pluginName '
                  'plugin, powered by Baseflow. '
                  'This plugin is available as open source project on Github. '
                  '\n\n'
                  'Need help with integrating functionalities within your own '
                  'apps? Contact us at hello@baseflow.com',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                _launcherRaisedButton(
                  'Find us on Github',
                  githubUrl,
                  context,
                ),
                _launcherRaisedButton(
                  'Find us on pub.dev',
                  pubDevUrl,
                  context,
                ),
                _launcherRaisedButton(
                  'Visit baseflow.com',
                  baseflowUrl,
                  context,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _launcherRaisedButton(String text, String url, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(top: 24.0),
      alignment: Alignment.center,
      child: SizedBox.expand(
        child: ElevatedButton(
          child: Text(text),
          onPressed: () => _launchURL(url),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
