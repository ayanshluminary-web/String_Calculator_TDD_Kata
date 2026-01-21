import 'package:test/test.dart';
import '../lib/string_calculator.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test('returns 0 for empty string', () {
    expect(calculator.add(''), equals(0));
  });

  test('returns number for single value', () {
  expect(calculator.add('1'), equals(1));
});
test('returns sum of two numbers', () {
  expect(calculator.add('1,2'), equals(3));
});
}
