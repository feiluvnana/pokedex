import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefExt on AutoDisposeRef {
  void cacheFor(Duration duration) {
    final link = keepAlive();
    Timer? timer;
    onCancel(() => timer = Timer(duration, link.close));
    onResume(() => timer?.cancel());
    onDispose(() => timer?.cancel());
  }
}

extension StringIterExt on Iterable<String> {
  Iterable<String> mapFirstLetterUpper() => map((e) => e.firstLetterUpper());
}

extension StringExt on String {
  String firstLetterUpper() => "${this[0].toUpperCase()}${substring(1)}";

  String allFirstLettersUpper(
          {required Pattern separator, String delimiter = ""}) =>
      split(separator).mapFirstLetterUpper().join(delimiter);

  String noNewLine() => replaceAll(RegExp("[\n\f]"), " ");
}
