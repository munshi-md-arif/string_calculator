// import 'package:string_calculator/string_calculator.dart';
// import 'package:test/test.dart';

// void main() {
//   test('calculate', () {
//     expect(calculate(), 42);
//   });
// }
import 'package:test/test.dart';
import '../lib/string_calculator.dart';

void main() {
  test('returns 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), equals(0));
  });
  test('returns the number for single input', () {
    final calculator = StringCalculator();
    expect(calculator.add('1'), equals(1));
  });
  test('returns sum for comma separated numbers', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2'), equals(3));
  });
  test('returns sum for any amount of numbers', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2,3,4'), equals(10));
  });
  test('supports new lines as delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add('1\n2,3'), equals(6));
  });
  test('supports custom delimiter', () {
    final calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), equals(3));
  });
  test('throws exception for negative numbers', () {
    final calculator = StringCalculator();
    expect(
        () => calculator.add('1,-2,3,-4'),
        throwsA(predicate((e) =>
            e.toString() == 'Exception: negative numbers not allowed -2,-4')));
  });
}
