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
}
