import 'dart:core';

import 'package:baseflow_plugin_template/src/page.dart';
import 'package:flutter/material.dart';

import 'info_page.dart';

/// Returns Baseflow URL, which is shown in the [InfoPage].
const String baseflowURL = 'https://baseflow.com';

/// [EdgeInsets] to define horizontal padding throughout the application.
const EdgeInsets defaultHorizontalPadding =
EdgeInsets.symmetric(horizontal: 24);

/// [EdgeInsets] to define vertical padding throughout the application.
const EdgeInsets defaultVerticalPadding = EdgeInsets.symmetric(vertical: 24);

/// Returns a [List] with [IconData] to show in the [AppHome] [AppBar].
final List<IconData> icons = [
  Icons.save_alt,
  Icons.info_outline,
];