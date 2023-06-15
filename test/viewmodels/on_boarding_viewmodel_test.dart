import 'package:flutter_test/flutter_test.dart';
import 'package:opticash_mobile/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('OnBoardingViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
