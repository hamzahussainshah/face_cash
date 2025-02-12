import 'package:flutter_test/flutter_test.dart';
import 'package:face_cash/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('HistoryScreenViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
