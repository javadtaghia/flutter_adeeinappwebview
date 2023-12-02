import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_adeeinappwebview/flutter_adeeinappwebview.dart';
import '../constants.dart';
import '../env.dart';
import '../util.dart';

part 'clear_and_set_proxy_override.dart';

void main() {
  final shouldSkip = kIsWeb;

  skippableGroup('Proxy Controller', () {
    clearAndSetProxyOverride();
  }, skip: shouldSkip);
}
